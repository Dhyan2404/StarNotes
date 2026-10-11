.class public Lnet/sf/saxon/trans/XmlProcessingException;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/XmlProcessingError;


# instance fields
.field public final a:Lnet/sf/saxon/trans/XPathException;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method


# virtual methods
.method public bridge synthetic asWarning()Lnet/sf/saxon/s9api/XmlProcessingError;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingException;->asWarning()Lnet/sf/saxon/trans/XmlProcessingException;

    move-result-object p0

    return-object p0
.end method

.method public asWarning()Lnet/sf/saxon/trans/XmlProcessingException;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XmlProcessingException;->setWarning(Z)V

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()Lnet/sf/saxon/s9api/QName;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingException;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/Instruction;

    if-nez v0, :cond_1

    instance-of p0, p0, Lnet/sf/saxon/tree/AttributeLocation;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerminationMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getXPathException()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    return-object p0
.end method

.method public isAlreadyReported()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p0

    return p0
.end method

.method public isStaticError()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->isStaticError()Z

    move-result p0

    return p0
.end method

.method public isTypeError()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result p0

    return p0
.end method

.method public isWarning()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->b:Z

    return p0
.end method

.method public setAlreadyReported(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XmlProcessingException;->a:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    return-void
.end method

.method public setTerminationMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XmlProcessingException;->c:Ljava/lang/String;

    return-void
.end method

.method public setWarning(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XmlProcessingException;->b:Z

    return-void
.end method
