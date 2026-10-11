.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/a;
.super Lcom/twelvemonkeys/imageio/AbstractMetadata;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "javax_imageio_jpeg_image_1.0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/AbstractMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getNativeTree()Lorg/w3c/dom/Node;
    .locals 10

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_jpeg_image_1.0"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "JPEGvariety"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "markerSequence"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdm;

    iget v3, v2, Lcom/sunia/HTREnginev2/sdm;->a:I

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "com"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/sunia/HTREnginev2/d4e;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/d4e;->b:Ljava/lang/String;

    const-string v4, "comment"

    invoke-virtual {v3, v4, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :sswitch_1
    instance-of v3, v2, Lcom/sunia/HTREnginev2/d9;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/sunia/HTREnginev2/d9;

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "app14Adobe"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sunia/HTREnginev2/d9;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Lcom/sunia/HTREnginev2/d9;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flags0"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Lcom/sunia/HTREnginev2/d9;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flags1"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v2, Lcom/sunia/HTREnginev2/d9;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "transform"

    invoke-virtual {v3, v4, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :sswitch_2
    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "dqt"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :sswitch_3
    check-cast v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "sos"

    invoke-direct {v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "numScanComponents"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "startSpectralSelection"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "endSpectralSelection"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "approxHigh"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->e:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "approxLow"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "scanComponentSpec"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->a:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "componentSelector"

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->c:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dcHuffTable"

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;->b:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "acHuffTable"

    invoke-virtual {v7, v8, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :sswitch_4
    check-cast v2, Lcom/sunia/HTREnginev2/n0i;

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "dht"

    invoke-direct {v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    move v5, v4

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move v6, v4

    :goto_3
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    iget-object v7, v2, Lcom/sunia/HTREnginev2/n0i;->e:[[I

    aget-object v7, v7, v5

    aget v7, v7, v6

    if-eqz v7, :cond_1

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "dhtable"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v8, "class"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "htableId"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :sswitch_5
    check-cast v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "sof"

    invoke-direct {v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "process"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "samplePrecision"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "numLines"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "samplesPerLine"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "numFrameComponents"

    invoke-virtual {v3, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    array-length v5, v2

    :goto_4
    if-ge v4, v5, :cond_4

    aget-object v6, v2, v4

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "componentSpec"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "componentId"

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->b:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "HsamplingFactor"

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->c:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VsamplingFactor"

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->d:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "QtableSelector"

    invoke-virtual {v7, v8, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :cond_5
    :goto_5
    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "unknown"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MarkerTag"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/sunia/HTREnginev2/gd;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/gd;->c:[B

    invoke-virtual {v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :cond_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xffc3 -> :sswitch_5
        0xffc4 -> :sswitch_4
        0xffda -> :sswitch_3
        0xffdb -> :sswitch_2
        0xffee -> :sswitch_1
        0xfffe -> :sswitch_0
    .end sparse-switch
.end method

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdm;

    instance-of v2, v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ColorSpaceType"

    invoke-direct {p0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Gray"

    goto :goto_0

    :cond_1
    const-string v2, "RGB"

    :goto_0
    const-string v3, "name"

    invoke-virtual {p0, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumChannels"

    invoke-direct {p0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "Compression"

    invoke-direct {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "CompressionTypeName"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "JPEG"

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Lossless"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "TRUE"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "NumProgressiveScans"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "Dimension"

    invoke-direct {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "ImageOrientation"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 5

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdm;

    instance-of v2, v1, Lcom/sunia/HTREnginev2/d4e;

    if-eqz v2, :cond_0

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "TextEntry"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v3, "keyword"

    const-string v4, "comment"

    invoke-virtual {v2, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/sunia/HTREnginev2/d4e;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/d4e;->b:Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadataNode;->hasChildNodes()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
