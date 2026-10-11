.class public Lnet/sf/saxon/expr/instruct/Doctype;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Doctype;->n:Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Doctype.copy()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "saxonDoctype"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Doctype;->getContent()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getContent()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Doctype;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x107

    return p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Doctype;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    new-instance v4, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-direct {v4, v3}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v3}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v3

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TreeStatistics;->RESULT_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    invoke-virtual {v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->open()V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->startDocument(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/Doctype;->getContent()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lnet/sf/saxon/event/ComplexContentOutputter;->makeComplexContentReceiver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->endDocument()V

    invoke-virtual {v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->close()V

    invoke-virtual {v4}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_1e

    const-string v7, "doctype"

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, ""

    const-string v8, "name"

    invoke-interface {v4, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "system"

    invoke-interface {v4, v7, v10}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "public"

    invoke-interface {v4, v7, v12}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v9, :cond_1d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<!DOCTYPE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    const-string v14, "\" \""

    const-string v15, "PUBLIC \""

    const-string v6, "SYSTEM \""

    const/16 v3, 0x22

    if-eqz v11, :cond_1

    if-eqz v13, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v4, v5}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v9, :cond_2

    const-string v11, " ["

    invoke-virtual {v0, v1, v11}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_1b

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    const-string v3, "element"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v9, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "content"

    invoke-interface {v9, v7, v13}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_4

    if-eqz v9, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  <!ELEMENT "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    move/from16 v17, v11

    :goto_2
    move-object v8, v12

    const/16 v4, 0x22

    const/4 v5, 0x3

    move-object v12, v10

    goto/16 :goto_a

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:element must have a content attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:element must have a name attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_5
    const-string v5, "attlist"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v17, v11

    const-string v11, ">"

    if-eqz v5, :cond_c

    invoke-interface {v9, v7, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n  <!ATTLIST "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    if-nez v3, :cond_6

    invoke-virtual {v0, v1, v11}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    goto :goto_2

    :cond_6
    const-string v9, "attribute"

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "type"

    invoke-interface {v3, v7, v13}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v5

    const-string v5, "value"

    invoke-interface {v3, v7, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_9

    if-eqz v13, :cond_8

    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "\n    "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    goto :goto_3

    :cond_7
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:attribute must have a value attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:attribute must have a type attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_9
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:attribute must have a name attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unrecognized element within dtd:attlist"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_b
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:attlist must have an attribute named \'element\'"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_c
    move-object/from16 v19, v4

    const-string v3, "entity"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "notation"

    const-string v5, "\" "

    if-eqz v3, :cond_13

    invoke-interface {v9, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "parameter"

    invoke-interface {v9, v7, v13}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v8

    invoke-interface {v9, v7, v10}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v10

    invoke-interface {v9, v7, v12}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v7, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_12

    move-object/from16 v21, v12

    const-string v12, "\n  <!ENTITY "

    invoke-virtual {v0, v1, v12}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    const-string v12, "yes"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "% "

    invoke-virtual {v0, v1, v12}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    if-eqz v8, :cond_f

    if-eqz v10, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :cond_f
    :goto_4
    if-eqz v4, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NDATA "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const/16 v8, 0x20

    :goto_5
    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v4, v1, v10, v5}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_6

    :cond_11
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v11}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    move-object/from16 v12, v20

    move-object/from16 v8, v21

    const/16 v4, 0x22

    goto/16 :goto_9

    :cond_12
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:entity must have a name attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_13
    move-object/from16 v18, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    const/16 v8, 0x20

    const/4 v10, 0x0

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v3, v18

    invoke-interface {v9, v7, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v20

    invoke-interface {v9, v7, v12}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, v21

    invoke-interface {v9, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_18

    if-nez v13, :cond_15

    if-eqz v9, :cond_14

    goto :goto_7

    :cond_14
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:notation must have a system attribute or a public attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_15
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "\n  <!NOTATION "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    if-eqz v9, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    if-eqz v13, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    const/16 v4, 0x22

    goto :goto_8

    :cond_17
    const/16 v4, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SYSTEM \""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v0, v1, v11}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :goto_9
    const/4 v5, 0x3

    goto :goto_a

    :cond_18
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:notation must have a name attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_19
    move-object/from16 v12, v20

    move-object/from16 v8, v21

    const/16 v4, 0x22

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1a

    invoke-interface {v9}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :goto_a
    invoke-interface/range {v19 .. v19}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lnet/sf/saxon/om/NodeInfo;

    move v3, v4

    move-object v10, v12

    move/from16 v11, v17

    move-object/from16 v4, v19

    move-object v12, v8

    move-object/from16 v8, v18

    goto/16 :goto_1

    :cond_1a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized element "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in DTD output"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_1b
    move/from16 v17, v11

    if-eqz v17, :cond_1c

    const-string v2, "\n]"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    :cond_1c
    const-string v2, ">\n"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/instruct/Doctype;->d(Lnet/sf/saxon/event/Outputter;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1d
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "dtd:doctype must have a name attribute"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_1e
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "saxon:doctype instruction must contain dtd:doctype"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public setContent(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Doctype;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
