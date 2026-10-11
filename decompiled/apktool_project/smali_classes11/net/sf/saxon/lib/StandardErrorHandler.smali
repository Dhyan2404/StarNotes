.class public Lnet/sf/saxon/lib/StandardErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field public final e:Lnet/sf/saxon/lib/ErrorReporter;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->f:I

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->g:I

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->h:I

    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->i:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lnet/sf/saxon/lib/ErrorReporter;

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->g:I

    iget-boolean v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/StandardErrorHandler;->reportError(Lorg/xml/sax/SAXParseException;Z)V

    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->h:I

    iget-boolean v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/lib/StandardErrorHandler;->reportError(Lorg/xml/sax/SAXParseException;Z)V

    :cond_0
    throw p1
.end method

.method public getErrorCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->g:I

    return p0
.end method

.method public getFatalErrorCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->h:I

    return p0
.end method

.method public getWarningCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->f:I

    return p0
.end method

.method public reportError(Lorg/xml/sax/SAXParseException;Z)V
    .locals 3

    :try_start_0
    new-instance p2, Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error reported by XML parser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SXXP0003"

    invoke-direct {v0, v1, v2, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setCause(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public setSilent(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->i:Z

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->f:I

    iget-boolean v0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->i:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardErrorHandler;->e:Lnet/sf/saxon/lib/ErrorReporter;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingException;->asWarning()Lnet/sf/saxon/trans/XmlProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
