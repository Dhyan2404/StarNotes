.class public Lnet/sf/saxon/type/ValidationFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;
.implements Lnet/sf/saxon/type/ConversionResult;
.implements Lnet/sf/saxon/lib/Invalidity;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Lnet/sf/saxon/om/AbsolutePath;

.field public k:Lnet/sf/saxon/om/AbsolutePath;

.field public l:Lnet/sf/saxon/om/NodeInfo;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lnet/sf/saxon/type/SchemaType;

.field public r:Lnet/sf/saxon/om/StructuredQName;

.field public s:Lnet/sf/saxon/type/ValidationException;

.field public t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/type/ValidationFailure;->h:I

    iput v0, p0, Lnet/sf/saxon/type/ValidationFailure;->i:I

    iput v0, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->e:Ljava/lang/String;

    const-string p1, "FORG0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-void
.end method

.method public static fromException(Ljava/lang/Exception;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationException;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/type/ValidationException;

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/trans/XPathException;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "FORG0001"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addOffendingNode(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->m:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public getAbsolutePath()Lnet/sf/saxon/om/AbsolutePath;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->j:Lnet/sf/saxon/om/AbsolutePath;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/type/ValidationFailure;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public getConstraintClauseNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getConstraintName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getConstraintReference()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConstraintReferenceMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See http://www.w3.org/TR/xmlschema11-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextLocationText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getContextPath()Lnet/sf/saxon/om/AbsolutePath;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "Currently processing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getPathUsingPrefixes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextPath()Lnet/sf/saxon/om/AbsolutePath;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->k:Lnet/sf/saxon/om/AbsolutePath;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getInvalidNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->l:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/type/ValidationFailure;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public getLocator()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getOffendingNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->m:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPath()Lnet/sf/saxon/om/AbsolutePath;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->j:Lnet/sf/saxon/om/AbsolutePath;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/type/ValidationFailure;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getSchemaPart()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    return p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->q:Lnet/sf/saxon/type/SchemaType;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/type/ValidationFailure;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getValidationLocationText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getAbsolutePath()Lnet/sf/saxon/om/AbsolutePath;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "Validating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getPathUsingPrefixes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/AbsolutePath;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasBeenReported()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/type/ValidationFailure;->t:Z

    return p0
.end method

.method public makeException()Lnet/sf/saxon/type/ValidationException;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->s:Lnet/sf/saxon/type/ValidationException;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->s:Lnet/sf/saxon/type/ValidationException;

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/ValidationException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationException;-><init>(Lnet/sf/saxon/type/ValidationFailure;)V

    iget-object v1, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    if-nez v1, :cond_1

    const-string v1, "FORG0001"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    :goto_0
    iget-boolean v1, p0, Lnet/sf/saxon/type/ValidationFailure;->t:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    iput-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->s:Lnet/sf/saxon/type/ValidationException;

    return-object v0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljavax/xml/transform/SourceLocator;)V

    return-object v0
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/type/ValidationFailure;->i:I

    return-void
.end method

.method public setConstraintReference(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    .line 2
    iput-object p2, p0, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    return-void
.end method

.method public setConstraintReference(Lnet/sf/saxon/type/ValidationFailure;)V
    .locals 1

    .line 4
    iget v0, p1, Lnet/sf/saxon/type/ValidationFailure;->n:I

    iput v0, p0, Lnet/sf/saxon/type/ValidationFailure;->n:I

    .line 5
    iget-object v0, p1, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->o:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->p:Ljava/lang/String;

    return-void
.end method

.method public setContextPath(Lnet/sf/saxon/om/AbsolutePath;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->k:Lnet/sf/saxon/om/AbsolutePath;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "err"

    const-string v2, "http://www.w3.org/2005/xqt-errors"

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    :goto_0
    return-void
.end method

.method public setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->r:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setHasBeenReported(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/type/ValidationFailure;->t:Z

    iget-object p0, p0, Lnet/sf/saxon/type/ValidationFailure;->s:Lnet/sf/saxon/type/ValidationException;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_0
    return-void
.end method

.method public setInvalidNode(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->l:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/type/ValidationFailure;->h:I

    return-void
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setPublicId(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setLineNumber(I)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setColumnNumber(I)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->e:Ljava/lang/String;

    return-void
.end method

.method public setPath(Lnet/sf/saxon/om/AbsolutePath;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->j:Lnet/sf/saxon/om/AbsolutePath;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->g:Ljava/lang/String;

    return-void
.end method

.method public setSchemaType(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->q:Lnet/sf/saxon/type/SchemaType;

    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setPublicId(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setLineNumber(I)V

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setColumnNumber(I)V

    :cond_0
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/ValidationFailure;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidationException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
