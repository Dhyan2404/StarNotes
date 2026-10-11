.class public Lnet/sf/saxon/style/StyleNodeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/linked/NodeFactory;


# instance fields
.field public final a:Lnet/sf/saxon/style/Compilation;

.field public b:Z

.field protected config:Lnet/sf/saxon/Configuration;

.field protected namePool:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/style/Compilation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/StyleNodeFactory;->config:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/StyleNodeFactory;->namePool:Lnet/sf/saxon/om/NamePool;

    return-void
.end method


# virtual methods
.method public getCompilation()Lnet/sf/saxon/style/Compilation;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public isElementAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->namePool:Lnet/sf/saxon/om/NamePool;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/om/NamePool;->getFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/style/StyleNodeFactory;->makeXSLElement(ILnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isInstruction()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isTopLevelModule()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->b:Z

    return p0
.end method

.method public makeAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    invoke-direct {p0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;-><init>()V

    return-object p0
.end method

.method public makeElementNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;ZLnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/s9api/Location;I)Lnet/sf/saxon/tree/linked/ElementImpl;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-virtual/range {p7 .. p7}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    move-object/from16 v9, p2

    invoke-interface {v9, v1}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v1

    instance-of v10, v7, Lnet/sf/saxon/style/XSLModuleRoot;

    invoke-interface/range {p8 .. p8}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p8 .. p8}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v12

    invoke-interface/range {p8 .. p8}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result v13

    instance-of v2, v7, Lnet/sf/saxon/style/DataElement;

    if-eqz v2, :cond_0

    new-instance v6, Lnet/sf/saxon/style/DataElement;

    invoke-direct {v6}, Lnet/sf/saxon/style/DataElement;-><init>()V

    invoke-virtual {v6, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v6, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    return-object v6

    :cond_0
    move-object v2, v7

    check-cast v2, Lnet/sf/saxon/tree/linked/NodeImpl;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/StyleNodeFactory;->makeXSLElement(ILnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLStylesheet;

    const-string v14, "XTSE0010"

    if-nez v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLPackage;

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    new-instance v1, Lnet/sf/saxon/style/AbsentExtensionElement;

    invoke-direct {v1}, Lnet/sf/saxon/style/AbsentExtensionElement;-><init>()V

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only appear at the outermost level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/style/StyleElement;->setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V

    :cond_2
    move-object v15, v1

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    const-string v5, ""

    if-eqz v15, :cond_5

    iget-object v1, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v15, v1}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {v15, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v9, v6

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v15, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->T(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->R(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->processVersionAttribute(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->Q(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->S(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lnet/sf/saxon/style/StyleElement;->P(Ljava/lang/String;)V

    if-eqz v10, :cond_3

    invoke-virtual {v15}, Lnet/sf/saxon/style/StyleElement;->isDeclaration()Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, v15, Lnet/sf/saxon/style/XSLExpose;

    if-nez v1, :cond_3

    invoke-virtual {v15}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v6, Lnet/sf/saxon/style/DataElement;

    invoke-direct {v6}, Lnet/sf/saxon/style/DataElement;-><init>()V

    invoke-virtual {v6, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v6, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    return-object v6

    :cond_3
    instance-of v1, v7, Lnet/sf/saxon/style/AbsentExtensionElement;

    if-eqz v1, :cond_4

    move-object v1, v7

    check-cast v1, Lnet/sf/saxon/style/AbsentExtensionElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v15, Lnet/sf/saxon/style/XSLFallback;

    if-nez v1, :cond_4

    new-instance v8, Lnet/sf/saxon/style/AbsentExtensionElement;

    invoke-direct {v8}, Lnet/sf/saxon/style/AbsentExtensionElement;-><init>()V

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v8, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    iget-object v0, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v8, v0}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {v8}, Lnet/sf/saxon/style/StyleElement;->W()V

    return-object v8

    :cond_4
    return-object v15

    :cond_5
    move-object v15, v5

    move-object v9, v6

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v10, :cond_6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v6, Lnet/sf/saxon/style/DataElement;

    invoke-direct {v6}, Lnet/sf/saxon/style/DataElement;-><init>()V

    invoke-virtual {v6, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v6, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    return-object v6

    :cond_6
    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result v5

    instance-of v1, v7, Lnet/sf/saxon/style/XSLStylesheet;

    if-eqz v1, :cond_7

    move-object v1, v7

    check-cast v1, Lnet/sf/saxon/style/XSLStylesheet;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v1

    if-gt v1, v5, :cond_9

    new-instance v1, Lnet/sf/saxon/style/AbsentExtensionElement;

    invoke-direct {v1}, Lnet/sf/saxon/style/AbsentExtensionElement;-><init>()V

    iget-object v2, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown top-level XSLT declaration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_UNLESS_FORWARDS_COMPATIBLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/style/StyleElement;->setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V

    move-object/from16 v16, v9

    move/from16 p4, v10

    move-object v9, v6

    goto :goto_1

    :cond_7
    new-instance v4, Lnet/sf/saxon/style/AbsentExtensionElement;

    invoke-direct {v4}, Lnet/sf/saxon/style/AbsentExtensionElement;-><init>()V

    move-object v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v4

    move-object/from16 v4, p5

    move/from16 p4, v10

    move v10, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v9

    move-object v9, v6

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v7, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    iget-object v1, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v7, v1}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {v7, v15}, Lnet/sf/saxon/style/StyleElement;->processStandardAttributes(Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown XSLT instruction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v2

    if-le v2, v10, :cond_8

    sget-object v2, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    goto :goto_0

    :cond_8
    sget-object v2, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    :goto_0
    invoke-virtual {v7, v1, v2}, Lnet/sf/saxon/style/StyleElement;->setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V

    move-object v1, v7

    goto :goto_1

    :cond_9
    move-object/from16 v16, v9

    move/from16 p4, v10

    move-object v9, v6

    const/4 v1, 0x0

    :goto_1
    const-string v2, "http://saxon.sf.net/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not recognized as a Saxon instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lnet/sf/saxon/style/StyleNodeFactory;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Saxon extensions require Saxon-PE or higher"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    iget-object v3, v0, Lnet/sf/saxon/style/StyleNodeFactory;->config:Lnet/sf/saxon/Configuration;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No Saxon-PE or -EE license was found"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    :goto_2
    new-instance v3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v4, "SXWN9008"

    invoke-interface/range {p8 .. p8}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v3

    invoke-interface {v3, v2}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_c
    if-nez v1, :cond_d

    new-instance v1, Lnet/sf/saxon/style/LiteralResultElement;

    invoke-direct {v1}, Lnet/sf/saxon/style/LiteralResultElement;-><init>()V

    :cond_d
    move-object v7, v1

    invoke-virtual {v7, v8}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    iget-object v1, v0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v7, v1}, Lnet/sf/saxon/style/StyleElement;->setCompilation(Lnet/sf/saxon/style/Compilation;)V

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    invoke-virtual {v7, v11, v12, v13}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    move-object/from16 v1, v16

    invoke-virtual {v7, v1}, Lnet/sf/saxon/style/StyleElement;->processStandardAttributes(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lnet/sf/saxon/style/StyleElement;->isExtensionNamespace(Ljava/lang/String;)Z

    move-result v1

    const-class v2, Lnet/sf/saxon/style/LiteralResultElement;

    if-eqz v1, :cond_f

    if-nez p4, :cond_f

    invoke-static {v9}, Lnet/sf/saxon/lib/NamespaceConstant;->isReserved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v3, "Cannot use a reserved namespace for extension instructions"

    const-string v4, "XTSE0800"

    invoke-direct {v1, v3, v4}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-virtual {v7, v1, v3}, Lnet/sf/saxon/style/StyleElement;->setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V

    goto :goto_3

    :cond_e
    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown extension instruction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XTDE1450"

    invoke-direct {v1, v3, v4}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    invoke-virtual {v7, v1, v3}, Lnet/sf/saxon/style/StyleElement;->setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V

    :goto_3
    const-class v1, Lnet/sf/saxon/style/AbsentExtensionElement;

    goto :goto_4

    :cond_f
    move-object v1, v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleNodeFactory;->makeStyleElement(Ljava/lang/Class;)Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StyleElement;->substituteFor(Lnet/sf/saxon/style/StyleElement;)V

    move-object v7, v0

    :goto_5
    return-object v7
.end method

.method public makeStyleElement(Ljava/lang/Class;)Lnet/sf/saxon/style/StyleElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/style/StyleElement;",
            ">;)",
            "Lnet/sf/saxon/style/StyleElement;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StyleElement;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v0
.end method

.method public makeTextNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/linked/TextImpl;
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/style/StyleElement;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->I()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/style/TextValueTemplateNode;

    invoke-direct {p0, p2}, Lnet/sf/saxon/style/TextValueTemplateNode;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-direct {p0, p2}, Lnet/sf/saxon/tree/linked/TextImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public makeXSLElement(ILnet/sf/saxon/tree/linked/NodeImpl;)Lnet/sf/saxon/style/StyleElement;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p0, Lnet/sf/saxon/style/XSLWithParam;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLWithParam;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lnet/sf/saxon/style/XSLWherePopulated;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLWherePopulated;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lnet/sf/saxon/style/XSLWhen;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLWhen;-><init>()V

    return-object p0

    :pswitch_4
    instance-of p0, p2, Lnet/sf/saxon/style/XSLModuleRoot;

    if-nez p0, :cond_1

    instance-of p0, p2, Lnet/sf/saxon/style/XSLOverride;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/style/XSLLocalVariable;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLocalVariable;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;-><init>()V

    :goto_1
    return-object p0

    :pswitch_5
    new-instance p0, Lnet/sf/saxon/style/XSLValueOf;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLValueOf;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLUsePackage;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lnet/sf/saxon/style/XSLTry;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLTry;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lnet/sf/saxon/style/XSLText;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLText;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lnet/sf/saxon/style/XSLTemplate;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLTemplate;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lnet/sf/saxon/style/XSLSwitch;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSwitch;-><init>()V

    return-object p0

    :pswitch_b
    iget-boolean p0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->b:Z

    if-eqz p0, :cond_2

    new-instance p0, Lnet/sf/saxon/style/XSLPackage;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLPackage;-><init>()V

    goto :goto_2

    :cond_2
    new-instance p0, Lnet/sf/saxon/style/XSLStylesheet;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLStylesheet;-><init>()V

    :goto_2
    return-object p0

    :pswitch_c
    new-instance p0, Lnet/sf/saxon/style/XSLPreserveSpace;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLPreserveSpace;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lnet/sf/saxon/style/XSLSourceDocument;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSourceDocument;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lnet/sf/saxon/style/XSLSort;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSort;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lnet/sf/saxon/style/XSLSequence;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSequence;-><init>()V

    return-object p0

    :pswitch_10
    iget-object p0, p0, Lnet/sf/saxon/style/StyleNodeFactory;->a:Lnet/sf/saxon/style/Compilation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->setCreatesSecondaryResultDocuments(Z)V

    new-instance p0, Lnet/sf/saxon/style/XSLResultDocument;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLResultDocument;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lnet/sf/saxon/style/XSLProcessingInstruction;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLProcessingInstruction;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Lnet/sf/saxon/style/XSLPreserveSpace;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLPreserveSpace;-><init>()V

    return-object p0

    :pswitch_13
    new-instance p0, Lnet/sf/saxon/style/XSLPerformSort;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLPerformSort;-><init>()V

    return-object p0

    :pswitch_14
    instance-of p0, p2, Lnet/sf/saxon/style/XSLModuleRoot;

    if-nez p0, :cond_4

    instance-of p0, p2, Lnet/sf/saxon/style/XSLOverride;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLocalParam;-><init>()V

    goto :goto_4

    :cond_4
    :goto_3
    new-instance p0, Lnet/sf/saxon/style/XSLGlobalParam;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGlobalParam;-><init>()V

    :goto_4
    return-object p0

    :pswitch_15
    new-instance p0, Lnet/sf/saxon/style/XSLPackage;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLPackage;-><init>()V

    return-object p0

    :pswitch_16
    new-instance p0, Lnet/sf/saxon/style/XSLOutputCharacter;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOutputCharacter;-><init>()V

    return-object p0

    :pswitch_17
    new-instance p0, Lnet/sf/saxon/style/XSLOverride;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOverride;-><init>()V

    return-object p0

    :pswitch_18
    new-instance p0, Lnet/sf/saxon/style/XSLOutput;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOutput;-><init>()V

    return-object p0

    :pswitch_19
    new-instance p0, Lnet/sf/saxon/style/XSLOnNonEmpty;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOnNonEmpty;-><init>()V

    return-object p0

    :pswitch_1a
    new-instance p0, Lnet/sf/saxon/style/XSLOnEmpty;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOnEmpty;-><init>()V

    return-object p0

    :pswitch_1b
    new-instance p0, Lnet/sf/saxon/style/XSLOnCompletion;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOnCompletion;-><init>()V

    return-object p0

    :pswitch_1c
    new-instance p0, Lnet/sf/saxon/style/XSLOtherwise;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLOtherwise;-><init>()V

    return-object p0

    :pswitch_1d
    new-instance p0, Lnet/sf/saxon/style/XSLNumber;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLNumber;-><init>()V

    return-object p0

    :pswitch_1e
    new-instance p0, Lnet/sf/saxon/style/XSLMatchingSubstring;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMatchingSubstring;-><init>()V

    return-object p0

    :pswitch_1f
    new-instance p0, Lnet/sf/saxon/style/XSLNextMatch;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLNextMatch;-><init>()V

    return-object p0

    :pswitch_20
    new-instance p0, Lnet/sf/saxon/style/XSLNextIteration;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLNextIteration;-><init>()V

    return-object p0

    :pswitch_21
    new-instance p0, Lnet/sf/saxon/style/XSLNamespaceAlias;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLNamespaceAlias;-><init>()V

    return-object p0

    :pswitch_22
    new-instance p0, Lnet/sf/saxon/style/XSLNamespace;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLNamespace;-><init>()V

    return-object p0

    :pswitch_23
    new-instance p0, Lnet/sf/saxon/style/XSLMode;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMode;-><init>()V

    return-object p0

    :pswitch_24
    new-instance p0, Lnet/sf/saxon/style/XSLMessage;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMessage;-><init>()V

    return-object p0

    :pswitch_25
    new-instance p0, Lnet/sf/saxon/style/XSLMergeSource;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMergeSource;-><init>()V

    return-object p0

    :pswitch_26
    new-instance p0, Lnet/sf/saxon/style/XSLMergeKey;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMergeKey;-><init>()V

    return-object p0

    :pswitch_27
    new-instance p0, Lnet/sf/saxon/style/XSLMergeAction;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMergeAction;-><init>()V

    return-object p0

    :pswitch_28
    new-instance p0, Lnet/sf/saxon/style/XSLMerge;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMerge;-><init>()V

    return-object p0

    :pswitch_29
    new-instance p0, Lnet/sf/saxon/style/XSLMatchingSubstring;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMatchingSubstring;-><init>()V

    return-object p0

    :pswitch_2a
    new-instance p0, Lnet/sf/saxon/style/XSLMatch;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMatch;-><init>()V

    return-object p0

    :pswitch_2b
    new-instance p0, Lnet/sf/saxon/style/XSLMapEntry;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMapEntry;-><init>()V

    return-object p0

    :pswitch_2c
    new-instance p0, Lnet/sf/saxon/style/XSLMap;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLMap;-><init>()V

    return-object p0

    :pswitch_2d
    new-instance p0, Lnet/sf/saxon/style/XSLKey;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLKey;-><init>()V

    return-object p0

    :pswitch_2e
    new-instance p0, Lnet/sf/saxon/style/XSLIterate;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLIterate;-><init>()V

    return-object p0

    :pswitch_2f
    new-instance p0, Lnet/sf/saxon/style/XSLItemType;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLItemType;-><init>()V

    return-object p0

    :pswitch_30
    new-instance p0, Lnet/sf/saxon/style/XSLInclude;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLInclude;-><init>()V

    return-object p0

    :pswitch_31
    new-instance p0, Lnet/sf/saxon/style/XSLImportSchema;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLImportSchema;-><init>()V

    return-object p0

    :pswitch_32
    new-instance p0, Lnet/sf/saxon/style/XSLImport;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLImport;-><init>()V

    return-object p0

    :pswitch_33
    new-instance p0, Lnet/sf/saxon/style/XSLIf;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLIf;-><init>()V

    return-object p0

    :pswitch_34
    new-instance p0, Lnet/sf/saxon/style/XSLGlobalContextItem;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGlobalContextItem;-><init>()V

    return-object p0

    :pswitch_35
    new-instance p0, Lnet/sf/saxon/style/XSLFunction;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLFunction;-><init>()V

    return-object p0

    :pswitch_36
    new-instance p0, Lnet/sf/saxon/style/XSLFork;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLFork;-><init>()V

    return-object p0

    :pswitch_37
    new-instance p0, Lnet/sf/saxon/style/XSLForEachGroup;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLForEachGroup;-><init>()V

    return-object p0

    :pswitch_38
    new-instance p0, Lnet/sf/saxon/style/XSLForEach;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLForEach;-><init>()V

    return-object p0

    :pswitch_39
    new-instance p0, Lnet/sf/saxon/style/XSLFallback;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLFallback;-><init>()V

    return-object p0

    :pswitch_3a
    new-instance p0, Lnet/sf/saxon/style/XSLEvaluate;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLEvaluate;-><init>()V

    return-object p0

    :pswitch_3b
    new-instance p0, Lnet/sf/saxon/style/XSLExpose;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLExpose;-><init>()V

    return-object p0

    :pswitch_3c
    new-instance p0, Lnet/sf/saxon/style/XSLElement;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLElement;-><init>()V

    return-object p0

    :pswitch_3d
    new-instance p0, Lnet/sf/saxon/style/XSLDocument;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLDocument;-><init>()V

    return-object p0

    :pswitch_3e
    new-instance p0, Lnet/sf/saxon/style/XSLDecimalFormat;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLDecimalFormat;-><init>()V

    return-object p0

    :pswitch_3f
    new-instance p0, Lnet/sf/saxon/style/XSLCopyOf;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLCopyOf;-><init>()V

    return-object p0

    :pswitch_40
    new-instance p0, Lnet/sf/saxon/style/XSLCopy;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLCopy;-><init>()V

    return-object p0

    :pswitch_41
    new-instance p0, Lnet/sf/saxon/style/XSLContextItem;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLContextItem;-><init>()V

    return-object p0

    :pswitch_42
    new-instance p0, Lnet/sf/saxon/style/XSLComment;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLComment;-><init>()V

    return-object p0

    :pswitch_43
    new-instance p0, Lnet/sf/saxon/style/XSLChoose;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLChoose;-><init>()V

    return-object p0

    :pswitch_44
    new-instance p0, Lnet/sf/saxon/style/XSLCharacterMap;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLCharacterMap;-><init>()V

    return-object p0

    :pswitch_45
    new-instance p0, Lnet/sf/saxon/style/XSLCatch;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLCatch;-><init>()V

    return-object p0

    :pswitch_46
    new-instance p0, Lnet/sf/saxon/style/XSLCallTemplate;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLCallTemplate;-><init>()V

    return-object p0

    :pswitch_47
    new-instance p0, Lnet/sf/saxon/style/XSLBreak;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLBreak;-><init>()V

    return-object p0

    :pswitch_48
    new-instance p0, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAttributeSet;-><init>()V

    return-object p0

    :pswitch_49
    new-instance p0, Lnet/sf/saxon/style/XSLAttribute;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAttribute;-><init>()V

    return-object p0

    :pswitch_4a
    new-instance p0, Lnet/sf/saxon/style/XSLAssert;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAssert;-><init>()V

    return-object p0

    :pswitch_4b
    new-instance p0, Lnet/sf/saxon/style/XSLArrayMember;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLArrayMember;-><init>()V

    return-object p0

    :pswitch_4c
    new-instance p0, Lnet/sf/saxon/style/XSLArray;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLArray;-><init>()V

    return-object p0

    :pswitch_4d
    new-instance p0, Lnet/sf/saxon/style/XSLApplyTemplates;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLApplyTemplates;-><init>()V

    return-object p0

    :pswitch_4e
    new-instance p0, Lnet/sf/saxon/style/XSLApplyImports;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLApplyImports;-><init>()V

    return-object p0

    :pswitch_4f
    new-instance p0, Lnet/sf/saxon/style/XSLAnalyzeString;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAnalyzeString;-><init>()V

    return-object p0

    :pswitch_50
    new-instance p0, Lnet/sf/saxon/style/XSLAccumulatorRule;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAccumulatorRule;-><init>()V

    return-object p0

    :pswitch_51
    new-instance p0, Lnet/sf/saxon/style/XSLAccumulator;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAccumulator;-><init>()V

    return-object p0

    :pswitch_52
    new-instance p0, Lnet/sf/saxon/style/XSLAccept;

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLAccept;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public newPrincipalModule(Lnet/sf/saxon/style/XSLPackage;)Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;

    invoke-direct {p0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;-><init>(Lnet/sf/saxon/style/XSLPackage;)V

    return-object p0
.end method

.method public setTopLevelModule(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/StyleNodeFactory;->b:Z

    return-void
.end method
