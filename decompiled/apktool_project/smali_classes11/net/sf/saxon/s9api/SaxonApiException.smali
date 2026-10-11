.class public Lnet/sf/saxon/s9api/SaxonApiException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/UncheckedXPathException;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()Lnet/sf/saxon/s9api/QName;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v1, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getLineNumber()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method
