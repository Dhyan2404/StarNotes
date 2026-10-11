.class public Lnet/sf/saxon/style/XSLPackage;
.super Lnet/sf/saxon/style/XSLModuleRoot;
.source "SourceFile"


# instance fields
.field public u:Ljava/lang/String;

.field public v:Lnet/sf/saxon/style/PackageVersion;

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLModuleRoot;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLPackage;->u:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLPackage;->v:Lnet/sf/saxon/style/PackageVersion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLPackage;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLPackage;->x:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLPackage;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->prepareAttributes()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLPackage;->u:Ljava/lang/String;

    return-object p0
.end method

.method public getNameAndVersion()Lnet/sf/saxon/trans/packages/VersionedPackageName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    return-object v0
.end method

.method public getPackageVersion()Lnet/sf/saxon/style/PackageVersion;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLPackage;->v:Lnet/sf/saxon/style/PackageVersion;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->prepareAttributes()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLPackage;->v:Lnet/sf/saxon/style/PackageVersion;

    return-object p0
.end method

.method public getVersion()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->prepareAttributes()V

    :cond_0
    iget p0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    return p0
.end method

.method public initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "package"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/style/XSLPackage;->w:Z

    return-void
.end method

.method public isDeclaredModes()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLPackage;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLPackage;->prepareAttributes()V

    :cond_0
    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLPackage;->w:Z

    return p0
.end method

.method public prepareAttributes()V
    .locals 12

    iget-boolean v0, p0, Lnet/sf/saxon/style/XSLPackage;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLPackage;->x:Z

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "package-version"

    const-string v6, "version"

    const/4 v7, -0x1

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "package"

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLPackage;->u:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v4, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    if-ne v4, v7, :cond_1

    const-string v4, ""

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->processVersionAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v5, "declared-modes"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v5, v4}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lnet/sf/saxon/style/XSLPackage;->w:Z

    goto :goto_0

    :cond_6
    const-string v5, "input-type-annotations"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v3, v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v8}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    sget-object v1, Lnet/sf/saxon/style/PackageVersion;->ONE:Lnet/sf/saxon/style/PackageVersion;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLPackage;->v:Lnet/sf/saxon/style/PackageVersion;

    goto :goto_1

    :cond_9
    :try_start_0
    new-instance v1, Lnet/sf/saxon/style/PackageVersion;

    invoke-direct {v1, v2}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/style/XSLPackage;->v:Lnet/sf/saxon/style/PackageVersion;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    if-ne v1, v7, :cond_a

    const/16 v1, 0x1e

    iput v1, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v0, v7

    goto :goto_3

    :sswitch_0
    const-string v0, "strip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v1, "preserve"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :sswitch_2
    const-string v0, "unspecified"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_3
    packed-switch v0, :pswitch_data_0

    const-string v0, "Invalid value for input-type-annotations attribute. Permitted values are (strip, preserve, unspecified)"

    const-string v1, "XTSE0020"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :pswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_2
        -0x4c1851b4 -> :sswitch_1
        0x68b0318 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    instance-of v2, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v2, :cond_1

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StyleElement;->isDeclaration()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    instance-of v3, v0, Lnet/sf/saxon/style/DataElement;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xd6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x98

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lnet/sf/saxon/style/AbsentExtensionElement;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " must not appear directly within "

    const-string v4, "Element "

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTSE0010"

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is not in a namespace"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTSE0130"

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean p1, p0, Lnet/sf/saxon/style/XSLPackage;->w:Z

    if-eqz p1, :cond_9

    const-string p1, "default-mode"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The default mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been declared in an xsl:mode declaration"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE3085"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
