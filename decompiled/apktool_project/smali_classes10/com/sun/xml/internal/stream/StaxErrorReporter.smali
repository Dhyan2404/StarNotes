.class public Lcom/sun/xml/internal/stream/StaxErrorReporter;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;
.source "SourceFile"


# instance fields
.field protected fXMLReporter:Ljavax/xml/stream/XMLReporter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    .line 7
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/StaxErrorReporter;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    return-void
.end method


# virtual methods
.method public convertToStaxLocation(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Ljavax/xml/stream/Location;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;-><init>(Lcom/sun/xml/internal/stream/StaxErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    return-object v0
.end method

.method public reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x23

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    array-length p3, p4

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    if-lez p3, :cond_3

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-ge p2, p3, :cond_3

    aget-object v1, p4, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, p3, -0x1

    if-ge p2, v1, :cond_2

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_7

    const/4 p4, 0x1

    if-eq p5, p4, :cond_6

    const/4 p1, 0x2

    if-eq p5, p1, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :try_start_0
    iget-object p4, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    if-eqz p4, :cond_8

    const-string p5, "ERROR"

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/StaxErrorReporter;->convertToStaxLocation(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p4, p2, p5, p3, p0}, Ljavax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_7
    :try_start_1
    iget-object p4, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    if-eqz p4, :cond_8

    const-string p5, "WARNING"

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/StaxErrorReporter;->convertToStaxLocation(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p4, p2, p5, p3, p0}, Ljavax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_3
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 1

    const-string v0, "javax.xml.stream.reporter"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/stream/XMLReporter;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter;->fXMLReporter:Ljavax/xml/stream/XMLReporter;

    return-void
.end method
