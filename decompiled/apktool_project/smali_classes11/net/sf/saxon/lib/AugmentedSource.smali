.class public Lnet/sf/saxon/lib/AugmentedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Source;


# instance fields
.field public final e:Ljavax/xml/transform/Source;

.field public f:Lnet/sf/saxon/lib/ParseOptions;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    .line 3
    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Contained source must not be an AugmentedSource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    .line 8
    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    .line 10
    iput-object p2, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Contained source must not be an AugmentedSource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/AugmentedSource;

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-direct {v0, p0}, Lnet/sf/saxon/lib/AugmentedSource;-><init>(Ljavax/xml/transform/Source;)V

    return-object v0
.end method


# virtual methods
.method public addFilter(Lnet/sf/saxon/event/FilterFactory;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    return-void
.end method

.method public getContainedSource()Ljavax/xml/transform/Source;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    return-object p0
.end method

.method public getDTDValidation()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result p0

    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/FilterFactory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getFilters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object p0

    return-object p0
.end method

.method public getParseOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public getSchemaValidation()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result p0

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/AugmentedSource;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTopLevelElement()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getTopLevelElement()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getTopLevelType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getWrapDocument()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getWrapDocument()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLineNumbering()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumbering()Z

    move-result p0

    return p0
.end method

.method public isLineNumberingSet()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumberingSet()Z

    move-result p0

    return p0
.end method

.method public isPleaseCloseAfterUse()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p0

    return p0
.end method

.method public isXIncludeAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAware()Z

    move-result p0

    return p0
.end method

.method public isXIncludeAwareSet()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAwareSet()Z

    move-result p0

    return p0
.end method

.method public setDTDValidationMode(I)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setLineNumbering(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    return-void
.end method

.method public setModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    return-void
.end method

.method public setPleaseCloseAfterUse(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setPleaseCloseAfterUse(Z)V

    return-void
.end method

.method public setSchemaValidationMode(I)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/AugmentedSource;->g:Ljava/lang/String;

    return-void
.end method

.method public setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method

.method public setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    return-void
.end method

.method public setWrapDocument(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setWrapDocument(Ljava/util/Optional;)V

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/AugmentedSource;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    iget-object p0, p0, Lnet/sf/saxon/lib/AugmentedSource;->e:Ljavax/xml/transform/Source;

    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_0
    return-void
.end method
