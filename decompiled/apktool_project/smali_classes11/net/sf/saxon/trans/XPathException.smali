.class public Lnet/sf/saxon/trans/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/XPathException$StackOverflow;,
        Lnet/sf/saxon/trans/XPathException$Circularity;
    }
.end annotation


# instance fields
.field private _hasBeenReported:Z

.field private _isGlobalError:Z

.field private _isStaticError:Z

.field private _isSyntaxError:Z

.field private _isTypeError:Z

.field transient context:Lnet/sf/saxon/expr/XPathContext;

.field private errorCode:Lnet/sf/saxon/om/StructuredQName;

.field private errorObject:Lnet/sf/saxon/om/Sequence;

.field private failingExpression:Lnet/sf/saxon/expr/Expression;

.field private hostLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 3
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 4
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 5
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 7
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 8
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 38
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 39
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 40
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 42
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 43
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 47
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 48
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 49
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 51
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 52
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 54
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p3}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 27
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 19
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 20
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 21
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 23
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 24
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 30
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 31
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 32
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 34
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 35
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    .line 11
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    .line 12
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    .line 13
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    .line 15
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    .line 16
    invoke-static {}, Lnet/sf/saxon/trans/XPathException;->breakPoint()V

    return-void
.end method

.method private static breakPoint()V
    .locals 0

    return-void
.end method

.method public static fromXmlProcessingError(Lnet/sf/saxon/s9api/XmlProcessingError;)Lnet/sf/saxon/trans/XPathException;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/trans/XmlProcessingException;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XmlProcessingException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->isStaticError()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->isTypeError()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    return-object v0
.end method

.method public static makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCodeLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getErrorCodeNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getErrorObject()Lnet/sf/saxon/om/Sequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->errorObject:Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public getFailingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->failingExpression:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getHostLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public getLocator()Lnet/sf/saxon/s9api/Location;
    .locals 1

    .line 2
    invoke-super {p0}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/s9api/Location;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lnet/sf/saxon/s9api/Location;

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljavax/xml/transform/SourceLocator;)V

    return-object v0
.end method

.method public getXPathContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->context:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public hasBeenReported()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    return p0
.end method

.method public isGlobalError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    return p0
.end method

.method public isReportableStatically()Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->isStaticError()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string v2, "XTDE1260"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1280"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1390"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1400"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1428"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1440"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "XTDE1460"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public isStaticError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    return p0
.end method

.method public isSyntaxError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    return p0
.end method

.method public isTypeError()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    return p0
.end method

.method public maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getXPathContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-void
.end method

.method public maybeSetErrorCode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "err"

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    return-void
.end method

.method public maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/XPathException;->failingExpression:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->failingExpression:Lnet/sf/saxon/expr/Expression;

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "err"

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    return-void
.end method

.method public setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->errorCode:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setErrorObject(Lnet/sf/saxon/om/Sequence;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->errorObject:Lnet/sf/saxon/om/Sequence;

    return-void
.end method

.method public setFailingExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->failingExpression:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setHasBeenReported(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_hasBeenReported:Z

    return-void
.end method

.method public setHostLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 1

    .line 2
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->hostLanguage:Ljava/lang/String;

    return-void
.end method

.method public setIsGlobalError(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isGlobalError:Z

    return-void
.end method

.method public setIsStaticError(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    return-void
.end method

.method public setIsSyntaxError(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/trans/XPathException;->_isStaticError:Z

    :cond_0
    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isSyntaxError:Z

    return-void
.end method

.method public setIsTypeError(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/XPathException;->_isTypeError:Z

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_0
    return-void
.end method

.method public setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XPathException;->context:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method
