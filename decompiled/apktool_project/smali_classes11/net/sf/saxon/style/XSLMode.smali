.class public Lnet/sf/saxon/style/XSLMode;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/trans/SimpleMode;

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLMode;->w:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLMode;->x:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLMode;->y:Z

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

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getMode()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    return-object v0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLMode;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v2, 0xb4

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "XTSE3050"

    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " conflicts with a public named mode in package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/SimpleMode;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/rules/RuleManager;->setUnnamedModeExplicit(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const-string p1, "Mode name conflicts with a mode in a used package"

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexMode(Lnet/sf/saxon/style/ComponentDeclaration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_3

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    if-ne v0, v1, :cond_4

    sget-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    goto :goto_1

    :cond_4
    sget-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->indexMode(Lnet/sf/saxon/style/ComponentDeclaration;)V

    :goto_2
    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareAttributes()V
    .locals 27

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lnet/sf/saxon/style/XSLMode;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lnet/sf/saxon/style/XSLMode;->w:Z

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v7}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "warning-on-multiple-match"

    const-string v14, "typed"

    const-string v12, "name"

    const/16 v16, 0x2

    const-string v13, "warning-on-no-match"

    const/16 v17, -0x1

    const/4 v15, 0x0

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move/from16 v10, v17

    goto/16 :goto_2

    :sswitch_0
    const-string v10, "on-no-match"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0x8

    goto :goto_2

    :sswitch_1
    const-string v10, "visibility"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x7

    goto :goto_2

    :sswitch_2
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x6

    goto :goto_2

    :sswitch_3
    const-string v10, "use-accumulators"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x5

    goto :goto_2

    :sswitch_4
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x4

    goto :goto_2

    :sswitch_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x3

    goto :goto_2

    :sswitch_6
    const-string v10, "streamable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v10, v16

    goto :goto_2

    :sswitch_7
    const-string v10, "on-multiple-match"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    move v10, v0

    goto :goto_2

    :sswitch_8
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    move v10, v15

    :goto_2
    const-string v0, "fail"

    packed-switch v10, :pswitch_data_0

    const-string v0, "http://saxon.sf.net/"

    invoke-interface {v8, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->isExtensionAttributeAllowed(Ljava/lang/String;)Z

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v9, "trace"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "saxon:trace"

    invoke-virtual {v1, v0, v7}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lnet/sf/saxon/style/XSLMode;->y:Z

    goto/16 :goto_5

    :cond_a
    invoke-interface {v8}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v8, "as"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v6, v7

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v1, v8}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_5

    :pswitch_0
    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_3
    move/from16 v12, v17

    goto :goto_4

    :sswitch_9
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v12, 0x5

    goto :goto_4

    :sswitch_a
    const-string v0, "shallow-skip"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const/4 v12, 0x4

    goto :goto_4

    :sswitch_b
    const-string v0, "shallow-copy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    const/4 v12, 0x3

    goto :goto_4

    :sswitch_c
    const-string v0, "deep-skip"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    move/from16 v12, v16

    goto :goto_4

    :sswitch_d
    const-string v0, "deep-copy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    const/4 v12, 0x1

    goto :goto_4

    :sswitch_e
    const-string v0, "text-only-copy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    move v12, v15

    :goto_4
    packed-switch v12, :pswitch_data_1

    const-string v0, "text-only-copy|shallow-copy|deep-copy|shallow-skip|deep-skip|fail"

    invoke-virtual {v1, v9, v0}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v1, v5, v0}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v7, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v7, :cond_12

    const-string v7, "public|private|final"

    invoke-virtual {v1, v9, v7}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v7, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {v1, v11, v7}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getUsedAccumulators(Ljava/lang/String;Lnet/sf/saxon/style/StyleElement;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLMode;->v:Ljava/util/Set;

    goto :goto_5

    :pswitch_4
    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v18, "0"

    const-string v19, "1"

    const-string v20, "false"

    const-string v21, "lax"

    const-string v22, "no"

    const-string v23, "strict"

    const-string v24, "true"

    const-string v25, "unspecified"

    const-string v26, "yes"

    filled-new-array/range {v18 .. v26}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v14, v0, v15, v7}, Lnet/sf/saxon/style/StyleElement;->o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_5

    :pswitch_5
    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "#default"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1, v4, v3, v12}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleElement;->setObjectName(Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_5

    :pswitch_6
    invoke-virtual {v1, v7}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lnet/sf/saxon/style/XSLMode;->x:Z

    goto :goto_5

    :pswitch_7
    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const-string v8, "use-last"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "fail|use-last"

    invoke-virtual {v1, v9, v0}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_8
    invoke-virtual {v1, v13, v7}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_13
    :goto_5
    :pswitch_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    if-nez v4, :cond_15

    if-eqz v5, :cond_15

    iget-object v0, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v2, :cond_15

    const-string v0, "The unnamed mode must be private"

    const-string v2, "XTSE0020"

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/XSLMode;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    goto :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/style/XSLMode;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/trans/SimpleMode;

    if-eqz v3, :cond_17

    check-cast v2, Lnet/sf/saxon/trans/SimpleMode;

    iput-object v2, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    goto :goto_6

    :cond_17
    const-string v2, "Mode name refers to an overridden mode"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    :goto_6
    iget-object v0, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    iget-object v0, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    iget-boolean v2, v1, Lnet/sf/saxon/style/XSLMode;->y:Z

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Mode;->setModeTracing(Z)V

    if-eqz v6, :cond_18

    :try_start_0
    invoke-virtual {v1, v6}, Lnet/sf/saxon/style/StyleElement;->K(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "saxon:as"

    invoke-virtual {v1, v0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    :goto_7
    iget-object v1, v1, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/Mode;->setDefaultResultType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5caa41ca -> :sswitch_8
        -0x5559f28a -> :sswitch_7
        -0x4730db26 -> :sswitch_6
        0x337a8b -> :sswitch_5
        0x69b586a -> :sswitch_4
        0x5f23fb33 -> :sswitch_3
        0x70b64d85 -> :sswitch_2
        0x73b66312 -> :sswitch_1
        0x7c4c86e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7b4e0faa -> :sswitch_e
        -0x78d0f84a -> :sswitch_d
        -0x78c9c240 -> :sswitch_c
        -0x610b4472 -> :sswitch_b
        -0x61040e68 -> :sswitch_a
        0x2fd71e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTSE0010"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "streamable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "on-multiple-match"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "on-no-match"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "warning-on-multiple-match"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "warning-on-no-match"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "typed"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "visibility"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_4

    :cond_1
    const-string v3, "use-accumulators"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/style/XSLMode;->v:Ljava/util/Set;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v5, v3, [Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/style/XSLMode;->v:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/expr/accum/Accumulator;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move v7, v9

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    move v8, v1

    :goto_2
    if-ge v8, v3, :cond_4

    aget-object v9, v5, v8

    if-eqz v7, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SimpleMode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lnet/sf/saxon/trans/SimpleMode;->setExplicitProperty(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    :goto_4
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "no"

    if-nez v6, :cond_8

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    const-string v6, "false"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    move-object v3, v7

    goto :goto_6

    :cond_8
    :goto_5
    const-string v3, "yes"

    :cond_9
    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lnet/sf/saxon/style/XSLMode;->x:Z

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    move-object v7, v3

    :goto_7
    iget-object v3, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SimpleMode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v5

    invoke-virtual {v3, v4, v7, v5}, Lnet/sf/saxon/trans/SimpleMode;->setExplicitProperty(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lnet/sf/saxon/style/XSLMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/Mode;->isMustBeTyped()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JS\\d?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "In SaxonJS, all data is untyped"

    const-string v4, "XTTE3110"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    return-void
.end method
