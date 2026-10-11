.class public interface abstract Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POITextExtractor;


# virtual methods
.method public checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p0, p1

    int-to-long p1, p0

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The text would exceed the max allowed overall size of extracted text. By default this is prevented as some documents may exhaust available memory and it may indicate that the file is used to inflate memory usage and thus could pose a security risk. You can adjust this limit via ZipSecureFile.setMaxTextSize() if you need to work with files which have a lot of text. Size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", limit: MAX_TEXT_SIZE: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getMaxTextSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/extractor/POITextExtractor;->isCloseFilesystem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    :cond_0
    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object p0

    return-object p0
.end method

.method public getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
.end method

.method public getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/ooxml/POIXMLDocument;)V

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
