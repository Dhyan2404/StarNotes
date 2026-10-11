.class public Ljavax/imageio/plugins/tiff/TIFFDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MAX_LOW_FIELD_TAG_NUM:I = 0x214


# instance fields
.field private highFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/imageio/plugins/tiff/TIFFField;",
            ">;"
        }
    .end annotation
.end field

.field private lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

.field private numLowFields:I

.field private parentTag:Ljavax/imageio/plugins/tiff/TIFFTag;

.field private tagSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljavax/imageio/plugins/tiff/TIFFTagSet;Ljavax/imageio/plugins/tiff/TIFFTag;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x215

    new-array v0, v0, [Ljavax/imageio/plugins/tiff/TIFFField;

    iput-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v0, 0x0

    iput v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->parentTag:Ljavax/imageio/plugins/tiff/TIFFTag;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tagSets == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromMetadata(Ljavax/imageio/metadata/IIOMetadata;)Ljavax/imageio/plugins/tiff/TIFFDirectory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "javax_imageio_tiff_image_1.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "javax_imageio_1.0"

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter does not support required metadata format!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    move-object p0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "tiffImageMetadata == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getTagNumber()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x214

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    iget v2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    :cond_0
    aput-object p1, v1, v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "f == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tagSet == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->clone()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljavax/imageio/plugins/tiff/TIFFDirectory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFDirectory;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getParentTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v1

    iput-object v1, v0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->parentTag:Ljavax/imageio/plugins/tiff/TIFFTag;

    .line 5
    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFFields()[Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 7
    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->clone()Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public containsTIFFField(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x214

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAsMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-static {p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFIFD;)V

    return-object v0
.end method

.method public getNumTIFFFields()I
    .locals 1

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getParentTag()Ljavax/imageio/plugins/tiff/TIFFTag;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->parentTag:Ljavax/imageio/plugins/tiff/TIFFTag;

    return-object p0
.end method

.method public getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x214

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/plugins/tiff/TIFFField;

    :goto_0
    return-object p0
.end method

.method public getTIFFFields()[Ljavax/imageio/plugins/tiff/TIFFField;
    .locals 6

    iget v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x214

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    iget v2, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    if-ne v4, v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/plugins/tiff/TIFFField;

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object p0

    return-object p0
.end method

.method public getTagSets()[Ljavax/imageio/plugins/tiff/TIFFTagSet;
    .locals 1

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/tiff/TIFFTagSet;

    return-object p0
.end method

.method public removeTIFFField(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x214

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    iget v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    const/4 p0, 0x0

    aput-object p0, v0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeTIFFFields()V
    .locals 2

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->lowFields:[Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->numLowFields:I

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->highFields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/plugins/tiff/TIFFDirectory;->tagSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tagSet == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
