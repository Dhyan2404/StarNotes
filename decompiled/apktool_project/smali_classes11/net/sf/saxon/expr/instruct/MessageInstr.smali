.class public Lnet/sf/saxon/expr/instruct/MessageInstr;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/MessageInstr$a;
    }
.end annotation


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;

.field public final p:Lnet/sf/saxon/expr/Operand;

.field public q:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    if-nez p3, :cond_0

    new-instance p3, Lnet/sf/saxon/expr/StringLiteral;

    const-string v0, "Q{http://www.w3.org/2005/xqt-errors}XTMM9000"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {p3, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->n:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    invoke-direct {p1, p0, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->o:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    invoke-direct {p1, p0, p3, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->p:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static e()Ljavax/xml/transform/Result;
    .locals 2

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/instruct/MessageInstr;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getTerminate()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getErrorCode()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/expr/instruct/MessageInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d(ZLnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Message;
    .locals 2

    new-instance v0, Lnet/sf/saxon/s9api/Message;

    invoke-static {p3}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/s9api/XdmNode;

    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v1, p2}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v0, p3, v1, p1, p0}, Lnet/sf/saxon/s9api/Message;-><init>(Lnet/sf/saxon/s9api/XdmNode;Lnet/sf/saxon/s9api/QName;ZLnet/sf/saxon/s9api/Location;)V

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "message"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getTerminate()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getErrorCode()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x6000

    return p0
.end method

.method public getErrorCode()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->q:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x88

    goto :goto_0

    :cond_0
    const/16 p0, 0xb3

    :goto_0
    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getTerminate()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->o:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->p:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/trans/XsltController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/expr/instruct/MessageInstr;->e()Ljavax/xml/transform/Result;

    move-result-object p2

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, p1, p2, v1}, Lnet/sf/saxon/query/QueryResult;->serializeSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/Configuration;Ljavax/xml/transform/Result;Ljava/util/Properties;)V

    return-object v0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/XsltController;

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->isAssertionsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getTerminate()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v5, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The terminate attribute of xsl:message must be yes|true|1 or no|false|0"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XTDE0030"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move v1, v3

    goto :goto_1

    :pswitch_1
    move v1, v4

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getErrorCode()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance v2, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, "http://www.w3.org/2005/xqt-errors"

    const-string v5, "XTMM9000"

    const-string v6, "err"

    invoke-direct {v2, v6, v3, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XsltController;->incrementMessageCounter(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/expr/instruct/MessageInstr$a;

    new-instance v6, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {v6, v3}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lnet/sf/saxon/expr/instruct/MessageInstr$a;-><init>(Lnet/sf/saxon/event/SequenceReceiver;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-interface {v5}, Lnet/sf/saxon/event/Receiver;->open()V

    new-instance v6, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v6, v5}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    if-eqz v1, :cond_8

    const/16 v4, 0x4000

    :cond_8
    invoke-virtual {v6, v4}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    :try_start_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, v6, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " while evaluating xsl:message at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object p2

    invoke-virtual {v6, p2}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    :goto_4
    invoke-virtual {v6}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    invoke-virtual {v6}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-virtual {v3}, Lnet/sf/saxon/event/Builder;->close()V

    invoke-virtual {v3}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-virtual {p0, v1, v2, p2}, Lnet/sf/saxon/expr/instruct/MessageInstr;->d(ZLnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Message;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getMessageHandler()Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    new-instance p1, Lnet/sf/saxon/expr/instruct/TerminationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing terminated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/lib/StandardDiagnostics;->getInstructionNameDefault(Lnet/sf/saxon/expr/instruct/Instruction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/lib/StandardDiagnostics;->abbreviateLocationURIDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/instruct/TerminationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorObject(Lnet/sf/saxon/om/Sequence;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_5
        0x31 -> :sswitch_4
        0xdc1 -> :sswitch_3
        0x1d2e7 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setErrorCode(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setIsAssert(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->q:Z

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setTerminate(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/MessageInstr;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
