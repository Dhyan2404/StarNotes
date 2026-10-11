.class public Lnet/sf/saxon/expr/instruct/MemoFunction;
.super Lnet/sf/saxon/expr/instruct/UserFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;-><init>()V

    return-void
.end method

.method public static c([Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_4

    instance-of v5, v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v5, :cond_0

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v4, v0}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lnet/sf/saxon/value/QNameValue;

    const/16 v6, 0x2f

    if-eqz v5, :cond_1

    invoke-static {v4}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v4, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v4}, Lnet/sf/saxon/value/QualifiedNameValue;->getClarkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    instance-of v5, v4, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v5, :cond_2

    invoke-static {v4}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    instance-of v5, v4, Lnet/sf/saxon/om/Function;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Lnet/sf/saxon/expr/instruct/MemoFunction;->c([Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    const-string v2, "memo-function-cache"

    invoke-virtual {v1, p0, v2}, Lnet/sf/saxon/Controller;->getUserData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/Sequence;

    :goto_0
    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    const/16 p2, 0x20

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v1, p0, v2, v3}, Lnet/sf/saxon/Controller;->setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public computeEvaluationMode()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/UserFunction;->evaluator:Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public isMemoFunction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
