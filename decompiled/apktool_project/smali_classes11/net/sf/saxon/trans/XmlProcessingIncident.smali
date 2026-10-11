.class public Lnet/sf/saxon/trans/XmlProcessingIncident;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/XmlProcessingError;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;

.field public d:Lnet/sf/saxon/s9api/Location;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Lnet/sf/saxon/s9api/HostLanguage;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    .line 15
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    .line 16
    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    .line 20
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    .line 21
    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setErrorCodeAsEQName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    .line 4
    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setErrorCodeAsEQName(Ljava/lang/String;)V

    .line 10
    iput-object p3, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    .line 11
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->e:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/TransformerException;Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    .line 26
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    .line 27
    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    .line 31
    iput-boolean p2, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->e:Z

    return-void
.end method

.method public static maybeSetHostLanguage(Lnet/sf/saxon/s9api/XmlProcessingError;Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne v0, v1, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/trans/XmlProcessingException;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static maybeSetLocation(Lnet/sf/saxon/s9api/XmlProcessingError;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/trans/XmlProcessingException;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic asWarning()Lnet/sf/saxon/s9api/XmlProcessingError;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p0

    return-object p0
.end method

.method public asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->e:Z

    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->c:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getErrorCode()Lnet/sf/saxon/s9api/QName;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getInstructionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    :cond_0
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleUri()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerminationMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->g:Ljava/lang/String;

    return-object p0
.end method

.method public isAlreadyReported()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    return p0
.end method

.method public isStaticError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->j:Z

    return p0
.end method

.method public isTypeError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->f:Z

    return p0
.end method

.method public isWarning()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->e:Z

    return p0
.end method

.method public setAlreadyReported(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->h:Z

    return-void
.end method

.method public setCause(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public setErrorCodeAsEQName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Q{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{http://www.w3.org/2005/xqt-errors}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Q{http://saxon.sf.net/}invalid-error-code"

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->i:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->d:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setStaticError(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->j:Z

    return-void
.end method

.method public setTerminationMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->g:Ljava/lang/String;

    return-void
.end method

.method public setTypeError(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->f:Z

    return-void
.end method

.method public setWarning(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XmlProcessingIncident;->e:Z

    return-void
.end method
