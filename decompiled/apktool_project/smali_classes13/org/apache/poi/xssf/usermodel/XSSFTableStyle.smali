.class public Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyle;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final elementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/TableStyleType;",
            "Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    :try_start_0
    const-string v0, "declare namespace x=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//x:dxf | .//dxf"

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mc:Fallback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "x:dxfs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dxfs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :cond_1
    :try_start_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Error parsing XSSFTableStyle"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getTableStyleElementList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyleType;

    move-result-object v0

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetDxfId()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getDxfId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetSize()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getSize()J

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    if-eqz v1, :cond_5

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;

    invoke-direct {v2, v1, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_7

    :try_start_4
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw p1
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    return-object p0
.end method

.method public isBuiltin()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
