.class public abstract Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/metadata/IIOMetadataFormat;


# instance fields
.field protected attrInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected elementInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected resourceBaseName:Ljava/lang/String;

.field protected rootName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    return-void
.end method

.method private getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "attrName == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "elementName == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;
    .locals 2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such element: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "elementName == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->resourceBaseName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p2, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAttributeDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->dataType:I

    return p0
.end method

.method public getAttributeDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such attribute: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeEnumerations(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The attribute is not an enumeration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeListMaxLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->listMaxLength:I

    return p0
.end method

.method public getAttributeListMinLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->listMinLength:I

    return p0
.end method

.method public getAttributeMaxValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The attribute is not a range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeMinValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The attribute is not a range."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->attributeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeValueType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->valueType:I

    return p0
.end method

.method public getChildNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->childNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getChildPolicy(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->childPolicy:I

    return p0
.end method

.method public getElementDescription(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getResource(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No such element: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementMaxChildren(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->maxChildren:I

    return p0
.end method

.method public getElementMinChildren(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->minChildren:I

    return p0
.end method

.method public getObjectArrayMaxLength(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectArrayMaxLength:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectArrayMinLength(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectArrayMinLength:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectClass:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectDefaultValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectEnumerations(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectEnumerations:[Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectMaxValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectMaxValue:Ljava/lang/Comparable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectMinValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectMinValue:Ljava/lang/Comparable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element cannot contain an object value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getObjectValueType(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getElementInfo(Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    move-result-object p0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    return p0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->rootName:Ljava/lang/String;

    return-object p0
.end method

.method public isAttributeRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->getAttrInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    return p0
.end method
