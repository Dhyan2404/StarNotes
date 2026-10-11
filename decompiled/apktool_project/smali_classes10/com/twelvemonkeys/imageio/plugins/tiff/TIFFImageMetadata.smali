.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;
.super Lcom/twelvemonkeys/imageio/AbstractMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x186a0


# instance fields
.field public final e:Lcom/twelvemonkeys/imageio/metadata/Directory;

.field public f:Lcom/twelvemonkeys/imageio/metadata/Directory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/twelvemonkeys/imageio/metadata/Directory;)V

    return-void
.end method

.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/Directory;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "com_sun_media_imageio_plugins_tiff_image_1.0"

    .line 2
    const-class v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/AbstractMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "IFD"

    .line 3
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Directory;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    .line 4
    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/twelvemonkeys/imageio/metadata/Directory;)V

    return-void
.end method

.method public static l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I
    .locals 3

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of v1, v0, [S

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, [S

    aget-short p0, v0, v2

    return p0

    :cond_1
    instance-of v1, v0, [I

    if-eqz v1, :cond_2

    check-cast v0, [I

    aget p0, v0, v2

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addChildNode(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final b(Ljavax/imageio/metadata/IIOMetadataNode;I)V
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "TextEntry"

    invoke-direct {p2, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p1, "keyword"

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 10

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "TIFFIFD"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/twelvemonkeys/imageio/metadata/Directory;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parentTagNumber"

    invoke-virtual {v2, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v3, "parentTagName"

    invoke-virtual {v2, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "TIFFField"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getFieldName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result v4

    sget-object v5, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "TIFFUndefined"

    invoke-direct {v1, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "value"

    if-ne v4, v6, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\[?\\]?"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->g(Lcom/twelvemonkeys/imageio/metadata/Entry;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v7, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->m(Lcom/twelvemonkeys/imageio/metadata/Entry;)Z

    move-result v5

    xor-int/2addr v5, v6

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->h(Lcom/twelvemonkeys/imageio/metadata/Entry;)Ljava/lang/String;

    move-result-object v1

    if-ne v4, v6, :cond_4

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v4, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v2, v5, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->t(Ljava/lang/Object;ZLjavax/imageio/metadata/IIOMetadataNode;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v9, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v8, v5, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->t(Ljava/lang/Object;ZLjavax/imageio/metadata/IIOMetadataNode;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object v2, v3

    :cond_6
    :goto_3
    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public final d(SI)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported TIFF type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    new-array p0, p2, [J

    return-object p0

    :pswitch_1
    new-array p0, p2, [D

    return-object p0

    :pswitch_2
    new-array p0, p2, [F

    return-object p0

    :pswitch_3
    new-array p0, p2, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    return-object p0

    :pswitch_4
    new-array p0, p2, [I

    return-object p0

    :pswitch_5
    new-array p0, p2, [S

    return-object p0

    :pswitch_6
    new-array p0, p2, [Ljava/lang/String;

    return-object p0

    :pswitch_7
    new-array p0, p2, [B

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs e(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    array-length v1, p2

    rem-int v1, v0, v1

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-object p0
.end method

.method public final g(Lcom/twelvemonkeys/imageio/metadata/Entry;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BYTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "TIFFBytes"

    return-object p0

    :cond_0
    const-string p1, "ASCII"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "TIFFAsciis"

    return-object p0

    :cond_1
    const-string p1, "SHORT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "TIFFShorts"

    return-object p0

    :cond_2
    const-string p1, "LONG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "TIFFLongs"

    return-object p0

    :cond_3
    const-string p1, "RATIONAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "TIFFRationals"

    return-object p0

    :cond_4
    const-string p1, "SBYTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "TIFFSBytes"

    return-object p0

    :cond_5
    const-string p1, "SSHORT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "TIFFSShorts"

    return-object p0

    :cond_6
    const-string p1, "SLONG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "TIFFSLongs"

    return-object p0

    :cond_7
    const-string p1, "SRATIONAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "TIFFSRationals"

    return-object p0

    :cond_8
    const-string p1, "FLOAT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "TIFFFloats"

    return-object p0

    :cond_9
    const-string p1, "DOUBLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "TIFFDoubles"

    return-object p0

    :cond_a
    const-string p1, "LONG8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, "TIFFLong8s"

    return-object p0

    :cond_b
    const-string p1, "SLONG8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p0, "TIFFSLong8s"

    return-object p0

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lorg/w3c/dom/Element;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 2

    .line 2
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-virtual {p0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public bridge synthetic getNativeTree()Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0
.end method

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 8

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->i()I

    move-result v2

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ColorSpaceType"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const v4, 0x8023

    const/4 v5, 0x3

    const-string v6, "value"

    if-eq v1, v4, :cond_1

    const v4, 0x884c

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CLR"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v4, "Luv"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v4, "Lab"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v4, "YCbCr"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    if-ne v2, v5, :cond_0

    const-string v4, "CMY"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "CMYK"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v4, "RGB"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v4, "GRAY"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "3CLR"

    invoke-virtual {v3, v6, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "NumChannels"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-ne v1, v5, :cond_2

    const-string v2, "3"

    invoke-virtual {v3, v6, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "BlackIsZero"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "FALSE"

    invoke-virtual {v2, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Palette"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    array-length v2, p0

    div-int/2addr v2, v5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "PaletteEntry"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v5, "index"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget v5, p0, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "red"

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int v5, v3, v2

    aget v5, p0, v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "green"

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    aget v5, p0, v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "blue"

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x804c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 6

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "CompressionTypeName"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->addChildNode(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result p0

    :goto_0
    const-string v3, "value"

    sparse-switch p0, :sswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "JPEG 2000"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "SGI Log24"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "SGI Log"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "JBIG"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "DCS"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "Deflate"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "Pixar Log"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "Pixar Film"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "IT8BL"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_9
    const-string v4, "IT8MP"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_a
    const-string v4, "IT8LW"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_b
    const-string v4, "IT8CTPAD"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_c
    const-string v4, "ThunderScan"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_d
    const-string v4, "PackBits"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_e
    const-string v4, "CCITT RLEW"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_f
    const-string v4, "NEXT"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_10
    const-string v4, "ZLib"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_11
    const-string v4, "JPEG"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_12
    const-string v4, "Old JPEG"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_13
    const-string v4, "LZW"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_14
    const-string v4, "CCITT T6"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_15
    const-string v4, "CCITT T4"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_16
    const-string v4, "CCITT RLE"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_17
    const-string v4, "None"

    invoke-virtual {v1, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eq p0, v2, :cond_2

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Lossless"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x6

    if-eq p0, v2, :cond_1

    const/4 v2, 0x7

    if-eq p0, v2, :cond_1

    const v2, 0x8765

    if-eq p0, v2, :cond_1

    const v2, 0x8798

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "FALSE"

    invoke-virtual {v1, v3, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x7ffe -> :sswitch_f
        0x8003 -> :sswitch_e
        0x8005 -> :sswitch_d
        0x8029 -> :sswitch_c
        0x807f -> :sswitch_b
        0x8080 -> :sswitch_a
        0x8081 -> :sswitch_9
        0x8082 -> :sswitch_8
        0x808c -> :sswitch_7
        0x808d -> :sswitch_6
        0x80b2 -> :sswitch_5
        0x80b3 -> :sswitch_4
        0x8765 -> :sswitch_3
        0x8774 -> :sswitch_2
        0x8775 -> :sswitch_1
        0x8798 -> :sswitch_0
    .end sparse-switch
.end method

.method public getStandardDataNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 9

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "PlanarConfiguration"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v3, 0x11c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v2

    :goto_0
    const-string v4, "Unknown "

    const/4 v5, 0x2

    const-string v6, "value"

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "PlaneInterleaved"

    invoke-virtual {v1, v6, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "PixelInterleaved"

    invoke-virtual {v1, v6, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v7, 0x153

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v2

    :goto_3
    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "SampleFormat"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v8, 0x3

    if-eq v2, v3, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v8, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v1, "Real"

    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v1, "SignedIntegral"

    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-ne v1, v8, :cond_8

    const-string v1, "Index"

    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v1, "UnsignedIntegral"

    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    const-string v2, "1"

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\[?\\]?,?"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "BitsPerSample"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v4, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->i()I

    move-result v4

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v7, 0x10a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v5

    goto :goto_6

    :cond_a
    move v5, v3

    :goto_6
    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "SampleMSB"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-ne v5, v3, :cond_b

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->e(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "7"

    if-eqz v1, :cond_c

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->e(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->e(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 10

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x11a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v3, 0x11b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    const-wide/high16 v3, 0x4052000000000000L    # 72.0

    if-nez v1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    :goto_1
    div-double/2addr v7, v3

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "PixelAspectRatio"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    div-double v2, v5, v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    const-string v1, "Rotate90"

    goto :goto_2

    :pswitch_1
    const-string v1, "FlipVRotate90"

    goto :goto_2

    :pswitch_2
    const-string v1, "Rotate270"

    goto :goto_2

    :pswitch_3
    const-string v1, "FlipHRotate90"

    goto :goto_2

    :pswitch_4
    const-string v1, "FlipV"

    goto :goto_2

    :pswitch_5
    const-string v1, "Rotate180"

    goto :goto_2

    :pswitch_6
    const-string v1, "FlipH"

    goto :goto_2

    :pswitch_7
    const-string v1, "Normal"

    :goto_2
    if-eqz v1, :cond_2

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ImageOrientation"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x128

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v1

    :goto_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    if-ne v1, v2, :cond_6

    :cond_4
    if-ne v1, v4, :cond_5

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    goto :goto_4

    :cond_5
    const-wide v1, 0x4039666666666666L    # 25.4

    :goto_4
    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v9, "HorizontalPixelSize"

    invoke-direct {v4, v9}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "VerticalPixelSize"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    mul-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v5, 0x11e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v4

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v5, 0x11f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz v4, :cond_6

    if-eqz p0, :cond_6

    invoke-interface {v4}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "HorizontalPosition"

    invoke-direct {p0, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "VerticalPosition"

    invoke-direct {p0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    mul-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStandardDocumentNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 6

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Document"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "FormatVersion"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "6.0"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v1

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    const-string v1, "TransparencyMask"

    goto :goto_0

    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    const-string v1, "ReducedResolution"

    goto :goto_0

    :cond_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, "SinglePage"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "SubImageInterpretation"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v4, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd hh:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ImageCreationTime"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string p0, "year"

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "month"

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "day"

    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hour"

    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "minute"

    const/16 v1, 0xc

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "second"

    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x10e

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x10f

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x110

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x11d

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x131

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x13b

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x13c

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const/16 v1, 0x14d

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    const v1, 0x8298

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->b(Ljavax/imageio/metadata/IIOMetadataNode;I)V

    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadataNode;->hasChildNodes()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStandardTileNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTileNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0
.end method

.method public getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 4

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v0, 0x152

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    :cond_1
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Transparency"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "Alpha"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-ne p0, v0, :cond_2

    const-string p0, "premultiplied"

    goto :goto_1

    :cond_2
    const-string p0, "nonpremultiplied"

    :goto_1
    const-string v0, "value"

    invoke-virtual {v2, v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTIFFField(I)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/twelvemonkeys/imageio/metadata/Entry;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BYTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "TIFFByte"

    return-object p0

    :cond_0
    const-string p1, "ASCII"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "TIFFAscii"

    return-object p0

    :cond_1
    const-string p1, "SHORT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "TIFFShort"

    return-object p0

    :cond_2
    const-string p1, "LONG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "TIFFLong"

    return-object p0

    :cond_3
    const-string p1, "RATIONAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "TIFFRational"

    return-object p0

    :cond_4
    const-string p1, "SBYTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "TIFFSByte"

    return-object p0

    :cond_5
    const-string p1, "SSHORT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "TIFFSShort"

    return-object p0

    :cond_6
    const-string p1, "SLONG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "TIFFSLong"

    return-object p0

    :cond_7
    const-string p1, "SRATIONAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "TIFFSRational"

    return-object p0

    :cond_8
    const-string p1, "FLOAT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "TIFFFloat"

    return-object p0

    :cond_9
    const-string p1, "DOUBLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "TIFFDouble"

    return-object p0

    :cond_a
    const-string p1, "LONG8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, "TIFFLong8"

    return-object p0

    :cond_b
    const-string p1, "SLONG8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p0, "TIFFSLong8"

    return-object p0

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->l(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lorg/w3c/dom/Node;)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TIFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-short p0, v1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown TIFF type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :cond_3
    new-instance p1, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Unexpected value wrapper node, expected type"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_4
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Missing value wrapper node"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method public final k(Lorg/w3c/dom/Node;S)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    const-string v2, "value"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ",\\s?"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [B

    :goto_0
    array-length p2, p0

    if-ge v3, p2, :cond_0

    aget-object p2, p0, v3

    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p2

    aput-byte p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->d(SI)Ljava/lang/Object;

    move-result-object v5

    move v6, v3

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v8, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported TIFF type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_1
    move-object v7, v5

    check-cast v7, [D

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aput-wide v8, v7, v6

    goto :goto_3

    :pswitch_2
    move-object v7, v5

    check-cast v7, [F

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v7, v6

    goto :goto_3

    :pswitch_3
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    check-cast v9, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    array-length v10, v8

    if-le v10, v7, :cond_2

    new-instance v10, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    aget-object v11, v8, v3

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v10, v11, v12, v7, v8}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    goto :goto_2

    :cond_2
    new-instance v10, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    aget-object v7, v8, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v10, v7, v8}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(J)V

    :goto_2
    aput-object v10, v9, v6

    goto :goto_3

    :pswitch_4
    move-object v7, v5

    check-cast v7, [I

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v7, v6

    goto :goto_3

    :pswitch_5
    move-object v7, v5

    check-cast v7, [S

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v7, v6

    goto :goto_3

    :pswitch_6
    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    aput-object v8, v7, v6

    goto :goto_3

    :pswitch_7
    move-object v7, v5

    check-cast v7, [B

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "Value node does not match container node"

    invoke-direct {p0, p1, v0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_4
    if-nez v4, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    if-ne v4, v7, :cond_6

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v5

    :cond_7
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p2, "Empty TIFField node"

    invoke-direct {p0, p2, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final m(Lcom/twelvemonkeys/imageio/metadata/Entry;)Z
    .locals 1

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SBYTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "SSHORT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const-string p1, "SLONG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "SRATIONAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const-string p1, "FLOAT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const-string p1, "DOUBLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const-string p1, "SLONG8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/twelvemonkeys/imageio/AbstractMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->n(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/util/Map;)V

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public final n(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->r(Lorg/w3c/dom/Node;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->s(Lorg/w3c/dom/Node;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final o(Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PixelAspectRatio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "value"

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v6, "HorizontalPixelSize"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v6, "VerticalPixelSize"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, v7}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    :cond_4
    move v0, p0

    :goto_2
    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    :cond_5
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_6
    move v1, p0

    :goto_3
    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_7
    :goto_4
    const/4 p1, 0x3

    const-wide/32 v3, 0x186a0

    const v5, 0x47c35000    # 100000.0f

    const/16 v6, 0x128

    const/16 v7, 0x11b

    const/16 v8, 0x11a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_8

    goto :goto_5

    :cond_8
    move v2, p1

    :goto_5
    if-ne v2, p1, :cond_9

    const/high16 p0, 0x41200000    # 10.0f

    goto :goto_6

    :cond_9
    const p0, 0x41cb3333    # 25.4f

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p0

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v9, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    int-to-long v10, v0

    invoke-direct {v9, v10, v11, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    invoke-direct {v5, v8, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v5, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    int-to-long v8, p0

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    invoke-direct {v1, v7, v5}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6, p1, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p0, v0, p0

    const-wide/16 v0, 0x1

    if-ltz p0, :cond_b

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v9, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    int-to-long v10, p0

    invoke-direct {v9, v10, v11, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    invoke-direct {v5, v8, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v2, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v3, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v3, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(J)V

    invoke-direct {v2, v7, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    div-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v9, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v9, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(J)V

    invoke-direct {v5, v8, v9}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    new-instance v2, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    int-to-long v8, p0

    invoke-direct {v2, v8, v9, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    invoke-direct {v1, v7, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6, p1, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_8
    return-void
.end method

.method public final p(Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SubimageInterpretation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ImageCreationTime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_b

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextEntry"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "keyword"

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {p0, v2, v4}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "documentname"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x10d

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "imagedescription"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x10e

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "make"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x10f

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const-string v4, "model"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x110

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v4, "pagename"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x11d

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v4, "software"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x131

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v4, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x13b

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v4, "hostcomputer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x13c

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v4, "inknames"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v4, 0x14d

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_1

    :cond_8
    const-string v4, "copyright"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const v4, 0x8298

    invoke-direct {v3, v4, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;->getIdentifier()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p2, "Text node should only contain TextEntry nodes"

    invoke-direct {p0, p2, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_b
    return-void
.end method

.method public final r(Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->v(Lorg/w3c/dom/Node;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/AbstractMetadata;->reset()V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public final s(Lorg/w3c/dom/Node;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

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

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dimension"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->o(Lorg/w3c/dom/Node;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const-string v2, "Document"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->p(Lorg/w3c/dom/Node;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const-string v2, "Text"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->q(Lorg/w3c/dom/Node;Ljava/util/Map;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/twelvemonkeys/imageio/AbstractMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->n(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/util/Map;)V

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->f:Lcom/twelvemonkeys/imageio/metadata/Directory;

    return-void
.end method

.method public final t(Ljava/lang/Object;ZLjavax/imageio/metadata/IIOMetadataNode;)V
    .locals 2

    const-string p0, "value"

    if-eqz p2, :cond_0

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final u(Lorg/w3c/dom/Node;)Lcom/twelvemonkeys/imageio/metadata/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIFFIFD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "parentTagNumber"

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->v(Lorg/w3c/dom/Node;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v1, "TIFFField"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "number"

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->j(Lorg/w3c/dom/Node;)S

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->k(Lorg/w3c/dom/Node;S)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;

    invoke-direct {p1, v0, v1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \"TIFFIFD\" or \"TIFFField\" node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method public final v(Lorg/w3c/dom/Node;)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIFFIFD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata;->u(Lorg/w3c/dom/Node;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageMetadata$a;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_1
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Expected \"TIFFIFD\" node"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method
