.class public Lnet/sf/saxon/xpath/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final b:Lnet/sf/saxon/expr/instruct/Executable;

.field public final c:Lnet/sf/saxon/expr/Expression;

.field public d:Lnet/sf/saxon/expr/Expression;

.field public e:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->b:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    iget-object v3, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_10

    .line 5
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    .line 7
    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->b:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljavax/xml/xpath/XPathExpressionException;

    const-string p1, "The expression was compiled to handled untyped data, but the input is typed"

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljavax/xml/xpath/XPathExpressionException;

    const-string p1, "Supplied node must be built using the same or a compatible Configuration"

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    :goto_0
    new-instance v1, Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v3, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->b:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-direct {v1, v0, v3}, Lnet/sf/saxon/expr/XPathContextMajor;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/Executable;)V

    .line 12
    iget-object v0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->e:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    .line 13
    :try_start_1
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 18
    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    iget-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->d:Lnet/sf/saxon/expr/Expression;

    if-nez p1, :cond_7

    .line 21
    iget-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->d:Lnet/sf/saxon/expr/Expression;

    .line 22
    :cond_7
    iget-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->d:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    if-nez p1, :cond_8

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 25
    :cond_8
    instance-of p2, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz p2, :cond_9

    .line 26
    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 27
    :cond_9
    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/XPathExpressionImpl;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/Number_1;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 29
    :cond_a
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    .line 32
    instance-of p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz p1, :cond_b

    .line 33
    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getRealNode()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p0, :cond_d

    .line 34
    instance-of p1, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p1, :cond_c

    goto :goto_1

    .line 35
    :cond_c
    new-instance p0, Ljavax/xml/xpath/XPathExpressionException;

    const-string p1, "Expression result is not a node"

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_1
    return-object p0

    .line 36
    :cond_e
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 37
    iget-object p2, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->e:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    .line 38
    iget-object p2, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    .line 39
    invoke-static {p2}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    .line 40
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/PJConverter;->allocateNodeListCreator(Lnet/sf/saxon/Configuration;Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object p0

    .line 41
    const-class p1, Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v1}, Lnet/sf/saxon/expr/PJConverter;->convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 42
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "qName: Unknown type for expected result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_10
    new-instance p0, Ljavax/xml/xpath/XPathExpressionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Supplied context item is a sequence of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " items"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 46
    new-instance p2, Ljavax/xml/xpath/XPathExpressionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure converting a node of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/xpath/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "qName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 49
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/xpath/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    .line 55
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/xpath/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inputSource"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getInternalExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->c:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->e:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/XPathExpressionImpl;->e:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method
