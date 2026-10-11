.class public Lnet/sf/saxon/type/ValidationException;
.super Lnet/sf/saxon/trans/XPathException;
.source "SourceFile"


# instance fields
.field private failure:Lnet/sf/saxon/type/ValidationFailure;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ValidationFailure;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/type/ValidationException;->failure:Lnet/sf/saxon/type/ValidationFailure;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Lnet/sf/saxon/om/AbsolutePath;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationException;->failure:Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getPath()Lnet/sf/saxon/om/AbsolutePath;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/type/ValidationException;->failure:Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationException;->failure:Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getInvalidNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getAbsolutePath()Lnet/sf/saxon/om/AbsolutePath;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/om/AbsolutePath;->getPathUsingAbbreviatedUris()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/ValidationException;->failure:Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidationException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
