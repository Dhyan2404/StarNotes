.class public abstract Lnet/sf/saxon/trans/Mode;
.super Lnet/sf/saxon/expr/instruct/Actor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/Mode$RuleAction;,
        Lnet/sf/saxon/trans/Mode$RuleFilter;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

.field public static final OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

.field public static final RECOVER_WITH_WARNINGS:I = 0x1

.field public static final UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;


# instance fields
.field public m:Z

.field protected modeName:Lnet/sf/saxon/om/StructuredQName;

.field public mustBeTyped:Z

.field public mustBeUntyped:Z

.field public n:Lnet/sf/saxon/trans/RecoveryPolicy;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lnet/sf/saxon/value/SequenceType;

.field public s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "_omniMode"

    const-string v3, "saxon"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "unnamed"

    const-string v2, "xsl"

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "default"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/trans/Mode;->DEFAULT_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Actor;-><init>()V

    sget-object v0, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    iput-object v0, p0, Lnet/sf/saxon/trans/Mode;->n:Lnet/sf/saxon/trans/RecoveryPolicy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->p:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/trans/Mode;->r:Lnet/sf/saxon/value/SequenceType;

    iput-object p1, p0, Lnet/sf/saxon/trans/Mode;->modeName:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/Mode;->d(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(IILnet/sf/saxon/trans/rules/Rule;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/Mode;->e(IILnet/sf/saxon/trans/rules/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Z
    .locals 4

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/rules/Rule;->compareRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPartNumber()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPartNumber()I

    move-result p0

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public static synthetic e(IILnet/sf/saxon/trans/rules/Rule;)Z
    .locals 0

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result p2

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object v11

    invoke-virtual/range {p5 .. p5}, Lnet/sf/saxon/expr/XPathContextMinor;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v12

    invoke-virtual {v11}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v11}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v2

    move-object v14, v2

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    instance-of v2, v12, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    move-object v2, v12

    check-cast v2, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v16, v8

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move v3, v8

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v16, :cond_2

    move-object v4, v12

    check-cast v4, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v4}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_3
    move-object/from16 v17, v2

    invoke-interface {v12}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-nez v4, :cond_4

    move-object/from16 v2, v17

    :goto_3
    return-object v2

    :cond_4
    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    const/16 v18, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    :cond_6
    move/from16 v18, v3

    :goto_4
    iget-boolean v2, v0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_9

    instance-of v2, v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_c

    move-object v2, v4

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    if-eq v5, v8, :cond_7

    if-ne v5, v3, :cond_c

    :cond_7
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    if-eq v2, v3, :cond_8

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v2, v3, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Lnet/sf/saxon/trans/Mode;->getModeTitle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires typed nodes, but the input is untyped"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTTE3100"

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9
    iget-boolean v2, v0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    if-eqz v2, :cond_c

    instance-of v2, v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_c

    move-object v2, v4

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    if-eq v5, v8, :cond_a

    if-ne v5, v3, :cond_c

    :cond_a
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    if-eq v2, v3, :cond_c

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Lnet/sf/saxon/trans/Mode;->getModeTitle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires untyped nodes, but the input is typed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTTE3110"

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_5
    if-eqz v14, :cond_d

    invoke-interface {v14}, Lnet/sf/saxon/lib/TraceListener;->startRuleSearch()V

    :cond_d
    invoke-virtual {v0, v4, v10}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v2

    if-eqz v14, :cond_f

    if-nez v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v3

    invoke-interface {v14, v3, v0, v4}, Lnet/sf/saxon/lib/TraceListener;->endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V

    goto :goto_6

    :cond_e
    invoke-interface {v14, v2, v0, v4}, Lnet/sf/saxon/lib/TraceListener;->endRuleSearch(Ljava/lang/Object;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/om/Item;)V

    :cond_f
    :goto_6
    iget-boolean v3, v0, Lnet/sf/saxon/trans/Mode;->q:Z

    if-eqz v3, :cond_12

    move-object v3, v11

    check-cast v3, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XsltController;->getTemplateRuleTraceListener()Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    move-result-object v5

    if-nez v5, :cond_10

    new-instance v5, Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    invoke-virtual {v11}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;-><init>(Lnet/sf/saxon/lib/Logger;)V

    invoke-virtual {v3, v5}, Lnet/sf/saxon/trans/XsltController;->setTemplateRuleTraceListener(Lnet/sf/saxon/trace/TemplateRuleTraceListener;)V

    :cond_10
    if-nez v2, :cond_11

    const/4 v3, 0x0

    goto :goto_7

    :cond_11
    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/TemplateRule;

    :goto_7
    const-string v6, "apply-templates"

    move-object/from16 v15, p6

    invoke-virtual {v5, v6, v15, v4, v3}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->enter(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    move-object/from16 v19, v5

    goto :goto_8

    :cond_12
    move-object/from16 v15, p6

    const/16 v19, 0x0

    :goto_8
    if-nez v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v2

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v13, v7

    move-object/from16 v7, p5

    move/from16 v20, v8

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/trans/rules/BuiltInRuleSet;->process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V

    move-object/from16 v3, p1

    move-object v7, v13

    move-object/from16 v2, v17

    const/4 v6, 0x0

    goto :goto_b

    :cond_13
    move-object v13, v7

    move/from16 v20, v8

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lnet/sf/saxon/expr/instruct/TemplateRule;

    if-eq v7, v13, :cond_14

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/TemplateRule;->initialize()V

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v3

    invoke-virtual {v10, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    move-object/from16 v3, p1

    invoke-virtual {v10, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    move-object/from16 v5, p2

    invoke-virtual {v10, v5}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    move-object v13, v7

    goto :goto_9

    :cond_14
    move-object/from16 v3, p1

    move-object/from16 v5, p2

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v10, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    if-eqz v14, :cond_17

    invoke-interface {v14, v4}, Lnet/sf/saxon/lib/TraceListener;->startCurrentItem(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v7, v9, v10}, Lnet/sf/saxon/expr/instruct/TemplateRule;->applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v2

    if-eqz v2, :cond_16

    :cond_15
    invoke-interface {v2}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v2

    if-nez v2, :cond_15

    :cond_16
    invoke-interface {v14, v4}, Lnet/sf/saxon/lib/TraceListener;->endCurrentItem(Lnet/sf/saxon/om/Item;)V

    goto :goto_a

    :cond_17
    invoke-virtual {v7, v9, v10}, Lnet/sf/saxon/expr/instruct/TemplateRule;->applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v2

    :goto_a
    move-object v7, v13

    :goto_b
    iget-boolean v4, v0, Lnet/sf/saxon/trans/Mode;->q:Z

    if-eqz v4, :cond_18

    invoke-virtual/range {v19 .. v19}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->leave()V

    :cond_18
    move/from16 v3, v18

    move/from16 v8, v20

    goto/16 :goto_2
.end method

.method public abstract computeRankings(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/Mode;->getCodeForBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onNo"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean v3, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-boolean v3, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v3, p0, Lnet/sf/saxon/trans/Mode;->n:Lnet/sf/saxon/trans/RecoveryPolicy;

    sget-object v4, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v4, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "W"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "flags"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getStackFrameSlotsNeeded()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "patternSlots"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    move-result p0

    if-ne v0, p0, :cond_8

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "tree unbalanced"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public final export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/Mode;->getCodeForBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onNo"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean v3, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-boolean v3, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v3, p0, Lnet/sf/saxon/trans/Mode;->n:Lnet/sf/saxon/trans/RecoveryPolicy;

    sget-object v4, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v4, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "W"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    iget-boolean v3, p0, Lnet/sf/saxon/trans/Mode;->o:Z

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "e"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "flags"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->exportUseAccumulators(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getStackFrameSlotsNeeded()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "patternSlots"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    move-result p1

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Export tree unbalanced for mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public exportUseAccumulators(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    return-void
.end method

.method public getAccumulators()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->s:Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract getActivePart()Lnet/sf/saxon/trans/SimpleMode;
.end method

.method public abstract getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;
.end method

.method public getBuiltInRuleSetForCode(Ljava/lang/String;)Lnet/sf/saxon/trans/rules/BuiltInRuleSet;
    .locals 1

    const-string p0, "SC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "SS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/trans/rules/ShallowSkipRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/ShallowSkipRuleSet;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "DC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "DS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "FF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lnet/sf/saxon/trans/rules/FailRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/FailRuleSet;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, "TC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    move-result-object p0

    :goto_0
    const-string v0, "+W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;-><init>(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)V

    move-object p0, p1

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCodeForBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    if-eqz v0, :cond_0

    const-string p0, "SC"

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/ShallowSkipRuleSet;

    if-eqz v0, :cond_1

    const-string p0, "SS"

    return-object p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    if-eqz v0, :cond_2

    const-string p0, "DC"

    return-object p0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    if-eqz v0, :cond_3

    const-string p0, "DS"

    return-object p0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/FailRuleSet;

    if-eqz v0, :cond_4

    const-string p0, "FF"

    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    if-eqz v0, :cond_5

    const-string p0, "TC"

    return-object p0

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;->getBaseRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->getCodeForBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+W"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "???"

    return-object p0
.end method

.method public getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component$M;

    return-object p0
.end method

.method public bridge synthetic getDeclaringComponent()Lnet/sf/saxon/expr/Component;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->r:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public abstract getExplicitNamespaces(Lnet/sf/saxon/om/NamePool;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NamePool;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxPrecedence()I
.end method

.method public abstract getMaxRank()I
.end method

.method public getModeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->modeName:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getModeTitle(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "The unnamed mode"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "the unnamed mode"

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getNextMatchRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/poj;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/poj;-><init>(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p0, p1, p3, v0}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryPolicy()Lnet/sf/saxon/trans/RecoveryPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->n:Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object p0
.end method

.method public getRule(Lnet/sf/saxon/om/Item;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/qoj;

    invoke-direct {v0, p2, p3}, Lcom/sunia/HTREnginev2/qoj;-><init>(II)V

    invoke-virtual {p0, p1, p4, v0}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0
.end method

.method public abstract getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/expr/XPathContext;",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;)",
            "Lnet/sf/saxon/trans/rules/Rule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getStackFrameSlotsNeeded()I
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xb4

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public isDeclaredStreamable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/Mode;->m:Z

    return p0
.end method

.method public abstract isEmpty()Z
.end method

.method public isModeTracing()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/Mode;->q:Z

    return p0
.end method

.method public isMustBeTyped()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    return p0
.end method

.method public isUnnamedMode()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->modeName:Lnet/sf/saxon/om/StructuredQName;

    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public makeNewContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContext;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getStackFrameSlotsNeeded()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(I)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/accum/Accumulator;

    if-nez p0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_0
    return-object v0
.end method

.method public abstract processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public setAccumulators(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/trans/Mode;->s:Ljava/util/Set;

    return-void
.end method

.method public setDefaultResultType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/Mode;->r:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setHasRules(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->o:Z

    return-void
.end method

.method public setModeTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->q:Z

    return-void
.end method

.method public setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/Mode;->n:Lnet/sf/saxon/trans/RecoveryPolicy;

    return-void
.end method

.method public setStreamable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->m:Z

    return-void
.end method
