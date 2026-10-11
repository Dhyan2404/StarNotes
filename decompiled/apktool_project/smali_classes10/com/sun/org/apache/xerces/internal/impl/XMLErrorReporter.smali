.class public Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field public static final SEVERITY_ERROR:S = 0x1s

.field public static final SEVERITY_FATAL_ERROR:S = 0x2s

.field public static final SEVERITY_WARNING:S


# instance fields
.field protected fContinueAfterFatalError:Z

.field protected fDefaultErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

.field protected fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fMessageFormatters:Ljava/util/Hashtable;

.field private fSaxProxy:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const-string v0, "continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter$1;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fSaxProxy:Lorg/xml/sax/ErrorHandler;

    return-object p0
.end method

.method public putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    return-object p0
.end method

.method public reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1, p3, p4}, Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x23

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 8
    array-length v2, p4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-lez v2, :cond_3

    const/16 v3, 0x3f

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v1, v2, :cond_3

    .line 10
    aget-object v3, p4, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    const/16 v3, 0x26

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 13
    :goto_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    invoke-direct {v0, p1, p4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;-><init>(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fDefaultErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-nez p1, :cond_4

    .line 16
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fDefaultErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fDefaultErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    :cond_5
    if-eqz p5, :cond_9

    const/4 p4, 0x1

    if-eq p5, p4, :cond_8

    const/4 p4, 0x2

    if-eq p5, p4, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-interface {p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    .line 19
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    if-eqz p0, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    throw v0

    .line 21
    :cond_8
    invoke-interface {p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    goto :goto_3

    .line 22
    :cond_9
    invoke-interface {p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_3
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    :goto_0
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    return-void
.end method

.method public setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const-string v0, "continue-after-fatal-error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fContinueAfterFatalError:Z

    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x21

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const-string v0, "internal/error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    :cond_0
    return-void
.end method
