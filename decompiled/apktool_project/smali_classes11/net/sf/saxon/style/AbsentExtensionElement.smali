.class public Lnet/sf/saxon/style/AbsentExtensionElement;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/instruct/CallTemplate;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/AbsentExtensionElement;->u:Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-nez v0, :cond_2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "Unknown instruction"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    :cond_2
    invoke-virtual {p0, p1, p2, p0}, Lnet/sf/saxon/style/StyleElement;->u(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public markTailCalls()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/AbsentExtensionElement;->v:Z

    iget-object p0, p0, Lnet/sf/saxon/style/AbsentExtensionElement;->u:Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setTailRecursive(Z)V

    :cond_0
    return v0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 0

    return-void
.end method

.method public processAllAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getNamedTemplate(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lnet/sf/saxon/expr/instruct/CallTemplate;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StyleElement;->isWithinDeclaredStreamableConstruct()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4, v3}, Lnet/sf/saxon/expr/instruct/CallTemplate;-><init>(Lnet/sf/saxon/expr/instruct/NamedTemplate;Lnet/sf/saxon/om/StructuredQName;ZZ)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getLocalParamDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-boolean v5, v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isRequired:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v5

    iget-object v6, v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v7}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lnet/sf/saxon/om/AttributeMap;->get(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No value supplied for required parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "XTSE0690"

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/AttributeMap;->asList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v6, v7}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v6, v7}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    iget-object v9, v8, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v9, v6}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, v8, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    if-nez v9, :cond_5

    iget-object v8, v8, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->requiredType:Lnet/sf/saxon/value/SequenceType;

    new-instance v9, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v9}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    invoke-virtual {v9, v6}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    sget-object v10, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v8}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v10

    const/16 v11, 0x4000

    if-ne v10, v11, :cond_8

    invoke-virtual {v8}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v10

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v10, v11, :cond_6

    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object v10

    const-string v11, "yes-no-boolean"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v10

    new-array v11, v12, [Lnet/sf/saxon/expr/Expression;

    aput-object v8, v11, v4

    invoke-virtual {v10, v11}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v9, v1, v8}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v8}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v8

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v8, v11, :cond_7

    new-instance v8, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v8, v10, v11}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    move-object v10, v8

    :cond_7
    invoke-virtual {v9, v1, v10}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lnet/sf/saxon/style/StyleElement;->makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v9, v1, v8}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :goto_2
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    new-array v0, v4, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/instruct/WithParam;

    new-array v2, v4, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;[Lnet/sf/saxon/expr/instruct/WithParam;)V

    iput-object v1, p0, Lnet/sf/saxon/style/AbsentExtensionElement;->u:Lnet/sf/saxon/expr/instruct/CallTemplate;

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->processAllAttributes()V

    :goto_3
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    :cond_1
    :goto_0
    return-void
.end method
