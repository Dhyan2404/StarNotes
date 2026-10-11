.class Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/PropertyHandler;


# instance fields
.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->dateFormat:Ljava/text/DateFormat;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    return-void
.end method

.method private readCoreProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ooxml/POIXMLProperties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getUnderlyingProperties()Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "Category"

    invoke-virtual {p0, p2, v1, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "ContentStatus"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "ContentType"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Created"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putDateIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "CreatedString"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Creator"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Description"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Identifier"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Keywords"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Language"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "LastModifiedBy"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "LastPrinted"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putDateIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "LastPrintedString"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Modified"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putDateIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "ModifiedString"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Revision"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Subject"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "Version"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method public handleProperties()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->readCoreProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->readExtendedProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->readCustomProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getUnderlyingProperties()Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addMeta(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putDateIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Date;

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putIfPresent(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readCustomProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ooxml/POIXMLProperties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpwstr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpwstr()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpstr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpstr()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetFiletime()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getFiletime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetBool()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI1()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI2()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI2()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI4()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI4()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI8()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI8()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetInt()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi1()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi1()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi2()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi2()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi4()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi4()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi8()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi8()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_d
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUint()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUint()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_e
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR4()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR4()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_f
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR8()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR8()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_10
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDecimal()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1

    :cond_11
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_12
    const-string v0, "(not implemented!)"

    :goto_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public readExtendedProperties(Lorg/apache/poi/ooxml/POIXMLProperties;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ooxml/POIXMLProperties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getApplication()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application"

    invoke-virtual {p0, p2, v1, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AppVersion"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Characters"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharacters()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v0, "CharactersWithSpaces"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharactersWithSpaces()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v0, "Company"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HyperlinkBase"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinkBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HyperlinksChanged"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinksChanged()Z

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v0, "Lines"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLines()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v0, "LinksUpToDate"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLinksUpToDate()Z

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v0, "Manager"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pages"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPages()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v0, "Paragraphs"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getParagraphs()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v0, "PresentationFormat"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPresentationFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Template"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TotalTime"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTotalTime()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->putIfPresent(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method
