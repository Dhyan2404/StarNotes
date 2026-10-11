.class public Lnet/sf/saxon/style/XSLImportSchema;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "schema-location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "namespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "The zero-length string is not a valid namespace URI. For a schema with no namespace, omit the namespace attribute"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public readSchema()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    const-string v1, "schema-location"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "namespace"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "xsl:import-schema"

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " must not have more than one child element"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v5

    const/16 v7, 0x269

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The only child element permitted for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is xs:schema"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v5, "The schema-location attribute must be absent if an inline schema is present"

    const-string v7, "XTSE0215"

    invoke-virtual {p0, v5, v7}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "targetNamespace"

    invoke-interface {v6, v0, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v5

    invoke-virtual {v3, v6, v2, v5}, Lnet/sf/saxon/Configuration;->readInlineSchema(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Lnet/sf/saxon/lib/ErrorReporter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addImportedSchema(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    return-void

    :cond_6
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v2}, Lnet/sf/saxon/Configuration;->isSchemaAvailable(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "SXWN9006"

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    :try_start_3
    const-string v0, "No schema for this namespace is known, and no schema-location was supplied, so no schema has been imported"

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    sget-object v5, Lnet/sf/saxon/lib/Feature;->MULTIPLE_SCHEMA_IMPORTS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v1, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The schema document at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is ignored because a schema for this namespace is already loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/event/PipelineConfiguration;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lnet/sf/saxon/Configuration;->readSchema(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addImportedSchema(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_2
    invoke-virtual {v3, v2}, Lnet/sf/saxon/Configuration;->addSchemaForBuiltInNamespace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addImportedSchema(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "XTSE1650"

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v1
    :try_end_3
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, "XTSE0220"

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "XTSE0010"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    return-void
.end method
