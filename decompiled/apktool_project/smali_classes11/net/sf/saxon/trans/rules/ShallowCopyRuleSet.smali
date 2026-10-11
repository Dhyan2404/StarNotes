.class public Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/BuiltInRuleSet;


# static fields
.field public static final e:Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    invoke-direct {v0}, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    return-object v0
.end method


# virtual methods
.method public getActionForParentNodes(I)[Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 1

    sget-object p0, Lnet/sf/saxon/trans/rules/BuiltInRules;->SHALLOW_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;

    sget-object p1, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_ATTRIBUTES:Lnet/sf/saxon/trans/rules/BuiltInRules;

    sget-object v0, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_CHILDREN:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array {p0, p1, v0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "shallow-copy"

    return-object p0
.end method

.method public process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    move-object v10, v1

    check-cast v10, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v11, 0x3

    if-eq v1, v2, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v11, :cond_6

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7, v3}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    invoke-interface/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-interface {v10, v11}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v12, v5}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    invoke-virtual {v12, v8}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-void

    :cond_4
    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v7, v0, v9, v3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_5
    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v9, v3}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_6
    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v7, v0, v9, v3}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_7
    invoke-static {v10}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v10}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 p0, p4

    move-object p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, p6

    move/from16 p5, v3

    invoke-virtual/range {p0 .. p5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_8
    invoke-interface/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_9
    invoke-static {v10}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    if-eqz v1, :cond_a

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    :goto_1
    invoke-virtual {v7, v2, v1, v9, v3}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2, v3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_b
    invoke-interface/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v1

    invoke-virtual {v13, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v12, v13}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {v10, v4}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    if-eq v1, v2, :cond_c

    invoke-virtual {v13, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v13, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v13}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object v5, v13

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    goto :goto_3

    :cond_c
    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10, v11}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-virtual {v13, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v13}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object v5, v13

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/event/Outputter;->endElement()V

    invoke-virtual {v12, v8}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-void

    :cond_e
    invoke-virtual {v7, p1, v9, v3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :goto_5
    return-void
.end method
