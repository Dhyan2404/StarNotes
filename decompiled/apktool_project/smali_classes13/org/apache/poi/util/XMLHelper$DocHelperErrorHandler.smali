.class Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/XMLHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocHelperErrorHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/util/XMLHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;-><init>()V

    return-void
.end method

.method private printError(Lorg/apache/logging/log4j/Level;Lorg/xml/sax/SAXParseException;)V
    .locals 2

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/Logger;->atLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(Lorg/apache/logging/log4j/Level;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(Lorg/apache/logging/log4j/Level;Lorg/xml/sax/SAXParseException;)V

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(Lorg/apache/logging/log4j/Level;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method
