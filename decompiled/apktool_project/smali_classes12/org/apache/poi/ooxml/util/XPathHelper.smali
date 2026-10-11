.class public final Lorg/apache/poi/ooxml/util/XPathHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final MAC_DML_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/mac/drawingml/2008/main"

.field private static final MC_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/markup-compatibility/2006"

.field private static final OSGI_ERROR:Ljava/lang/String; = "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

.field static final xpathFactory:Ljavax/xml/xpath/XPathFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/ooxml/util/XPathHelper;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string v2, "AlternateContent"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->trySetFeature(Ljavax/xml/xpath/XPathFactory;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Ljavax/xml/xpath/XPathFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    return-object v0
.end method

.method private static selectProperty(Lorg/apache/xmlbeans/XmlCursor;[[Ljavax/xml/namespace/QName;IZZ)Lorg/apache/xmlbeans/XmlCursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 15
    aget-object v0, p1, p2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 16
    invoke-interface {p0, v5}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljavax/xml/namespace/QName;)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_2

    .line 17
    array-length v6, p1

    sub-int/2addr v6, v4

    if-ne p2, v6, :cond_0

    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    add-int/lit8 v6, p2, 0x1

    .line 19
    invoke-static {p0, p1, v6, p3, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlCursor;[[Ljavax/xml/namespace/QName;IZZ)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    if-eqz v6, :cond_1

    return-object v6

    .line 20
    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    .line 21
    invoke-interface {p0, v5}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling(Ljavax/xml/namespace/QName;)Z

    move-result v6

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-nez p4, :cond_e

    .line 22
    sget-object p4, Lorg/apache/poi/ooxml/util/XPathHelper;->ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p4}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljavax/xml/namespace/QName;)Z

    move-result p4

    if-nez p4, :cond_4

    goto/16 :goto_6

    .line 23
    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p4

    .line 24
    instance-of v1, p4, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;

    if-eqz v1, :cond_5

    .line 25
    check-cast p4, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_d

    .line 26
    :try_start_0
    sget-object p4, Lcom/microsoft/schemas/compatibility/AlternateContentDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/schemas/compatibility/AlternateContentDocument;

    .line 27
    invoke-interface {p0}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument;->getAlternateContent()Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;

    move-result-object p4
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_2
    invoke-interface {p4}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->sizeOfChoiceArray()I

    move-result p0

    :goto_3
    if-ge v2, p0, :cond_9

    .line 29
    invoke-interface {p4, v2}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->getChoiceArray(I)Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 31
    :try_start_1
    invoke-interface {v1}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;->getRequires()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/xmlbeans/XmlCursor;->namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://schemas.microsoft.com/office/mac/drawingml/2008/main"

    .line 32
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 33
    :cond_6
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    goto :goto_4

    .line 34
    :cond_7
    :try_start_2
    invoke-static {v3, p1, p2, p3, v4}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlCursor;[[Ljavax/xml/namespace/QName;IZZ)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_6

    .line 35
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-object v1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 36
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_8

    .line 37
    :try_start_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p1

    .line 38
    :cond_9
    invoke-interface {p4}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->isSetFallback()Z

    move-result p0

    if-nez p0, :cond_a

    return-object v0

    .line 39
    :cond_a
    invoke-interface {p4}, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->getFallback()Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Fallback;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    .line 40
    :try_start_5
    invoke-static {p0, p1, p2, p3, v4}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlCursor;[[Ljavax/xml/namespace/QName;IZZ)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eq p1, p0, :cond_b

    .line 41
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_b
    return-object p1

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    .line 42
    :cond_c
    throw p1

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    const-string p2, "unable to parse AlternateContent element"

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_d
    new-instance p0, Lorg/apache/xmlbeans/XmlException;

    const-string p1, "<CLASS>"

    const-string p2, "AlternateContent"

    const-string p3, "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

    .line 45
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<XSB>"

    const-string p3, "alternatecontentelement"

    .line 46
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    return-object v0
.end method

.method public static varargs selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory<",
            "TT;>;[[",
            "Ljavax/xml/namespace/QName;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p0, p3, v0, v1, v0}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlCursor;[[Ljavax/xml/namespace/QName;IZZ)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p3

    if-nez p3, :cond_3

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_3
    :try_start_1
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v1, :cond_5

    const-string v0, "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

    const-string v1, "<CLASS>"

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<XSB>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_4
    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_5
    :goto_1
    :try_start_2
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 12
    :try_start_4
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 13
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_7

    .line 14
    :try_start_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p2
.end method

.method private static trySetFeature(Ljavax/xml/xpath/XPathFactory;Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/xpath/XPathFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "Cannot set XPathFactory feature ({}) because outdated XML parser in classpath"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p2, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p2, "XPathFactory Feature ({}) unsupported"

    invoke-interface {p0, p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
