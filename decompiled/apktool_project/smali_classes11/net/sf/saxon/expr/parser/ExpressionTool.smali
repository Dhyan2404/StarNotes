.class public Lnet/sf/saxon/expr/parser/ExpressionTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->q(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I
    .locals 6

    instance-of v0, p0, Lnet/sf/saxon/expr/Assignation;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Assignation;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setSlotNumber(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getRequiredSlots()I

    move-result v1

    add-int/2addr p1, v1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->getSlotNumber()I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSlotNumber(I)V

    move p1, v1

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getClauseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/Clause;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/Clause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->setSlotNumber(I)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    add-int/lit8 v3, v3, 0x1

    move p1, v5

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v1

    instance-of v2, p0, Lnet/sf/saxon/expr/LocalVariableReference;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/expr/LocalVariableReference;

    move-object v3, v1

    check-cast v3, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v3}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/LocalVariableReference;->setSlotNumber(I)V

    :cond_4
    instance-of v2, v1, Lnet/sf/saxon/expr/Assignation;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v2}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result v2

    if-ltz v2, :cond_5

    goto/16 :goto_2

    :cond_5
    check-cast v1, Lnet/sf/saxon/expr/Assignation;

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {p0}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    :goto_1
    const-string p1, "*** Internal Saxon error: local variable encountered whose binding has been deleted"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable name: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Assignation;->getVariableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line number of reference: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Line number of declaration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    const-string p2, "DECLARATION:"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->explain(Lnet/sf/saxon/lib/Logger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    instance-of v0, p0, Lnet/sf/saxon/pattern/Pattern;

    if-eqz v0, :cond_7

    check-cast p0, Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    goto :goto_4

    :cond_7
    instance-of v0, p0, Lnet/sf/saxon/style/ScopedBindingElement;

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/style/ScopedBindingElement;

    invoke-interface {p0, p2, p1}, Lnet/sf/saxon/style/ScopedBindingElement;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result p1

    goto :goto_3

    :cond_9
    move p0, p1

    :goto_4
    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->t(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->m(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/b3g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/b3g;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-static {p0, p2, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static changesXsltContext(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getInterpretedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ResultDocument;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-nez v0, :cond_3

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    if-nez v0, :cond_3

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/NextMatch;

    if-nez v0, :cond_3

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ApplyImports;

    if-nez v0, :cond_3

    const-class v0, Lnet/sf/saxon/functions/RegexGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lnet/sf/saxon/functions/CurrentGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->changesXsltContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static clearStreamabilityData(Lnet/sf/saxon/expr/Expression;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/a3g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/a3g;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z

    return-void
.end method

.method public static computeEvaluationModesForUserFunctionCalls(Lnet/sf/saxon/expr/Expression;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/y2g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y2g;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z

    return-void
.end method

.method public static contains(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p2, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    .line 4
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static containsLocalParam(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/x2g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x2g;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static containsLocalVariableReference(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/d3g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d3g;-><init>(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static containsSubexpression(Lnet/sf/saxon/expr/Expression;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/c3g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/c3g;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->n(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit8 p0, p0, 0x1e

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/z2g;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/z2g;-><init>([Lnet/sf/saxon/expr/Binding;)V

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic e([Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->s([Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public static eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/Closure;

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Literal;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Literal;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;

    return-object p0

    :cond_3
    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_4

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Process;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Process;

    return-object p0
.end method

.method public static ebvError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effective boolean value is not defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0006"

    .line 2
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 4
    throw v0
.end method

.method public static ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effective boolean value is not defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0006"

    .line 6
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 8
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 9
    throw v0
.end method

.method public static effectiveBooleanValue(Lnet/sf/saxon/om/Item;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 35
    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_7

    .line 36
    instance-of v1, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v1, :cond_2

    .line 37
    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0

    .line 38
    :cond_2
    instance-of v1, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v1, :cond_3

    .line 39
    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 40
    :cond_3
    instance-of v1, p0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v1, :cond_5

    .line 41
    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    const-wide/16 v3, 0x0

    .line 42
    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-nez p0, :cond_4

    move v0, v2

    :cond_4
    return v0

    .line 43
    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne v1, v3, :cond_6

    return v2

    .line 44
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "an atomic value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v0

    .line 45
    :cond_7
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v0
.end method

.method public static effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v2

    .line 3
    sget-object v3, Lnet/sf/saxon/expr/parser/ExpressionTool$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const-string v3, ")"

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    const-string p0, "a sequence starting with an item of unknown kind"

    .line 4
    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v1

    .line 5
    :pswitch_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    const-string p0, "a sequence of two or more items starting with an external object value"

    .line 7
    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    :cond_1
    return v4

    .line 8
    :pswitch_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with a function ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v1

    .line 10
    :pswitch_2
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with a map ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v1

    .line 12
    :pswitch_3
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with an array item ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v1

    .line 14
    :pswitch_4
    instance-of v2, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v2, :cond_3

    .line 15
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    const-string v1, "a sequence of two or more items starting with a boolean"

    .line 17
    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 19
    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0

    .line 20
    :cond_3
    instance-of v2, v0, Lnet/sf/saxon/value/StringValue;

    if-eqz v2, :cond_5

    .line 21
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a sequence of two or more items starting with a string (\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    .line 24
    :cond_4
    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    .line 25
    :cond_5
    instance-of v2, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v2, :cond_8

    .line 26
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence of two or more items starting with a numeric value ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    .line 29
    :cond_6
    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    const-wide/16 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-nez p0, :cond_7

    move v1, v4

    :cond_7
    return v1

    .line 31
    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with an atomic value of type "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/AtomicType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;)V

    return v1

    .line 33
    :pswitch_5
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static expressionSize(Lnet/sf/saxon/expr/Expression;)I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getInterpretedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->expressionSize(Lnet/sf/saxon/expr/Expression;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-virtual {v1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getNominalTarget()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->expressionSize(Lnet/sf/saxon/expr/Expression;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static synthetic f(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->o(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static factorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;)Z
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/expr/ContextItemExpression;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->v(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/VariableReference;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lnet/sf/saxon/expr/AxisExpression;

    if-nez v4, :cond_3

    instance-of v4, v3, Lnet/sf/saxon/expr/RootExpression;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->factorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->v(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/VariableReference;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_5
    return v1
.end method

.method public static findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->u(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static gatherCalledFunctionNames(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherCalledFunctionNames(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static gatherCalledFunctions(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UserFunction;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherCalledFunctions(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static gatherReferencedVariables(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Binding;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/OperandRole;->isInChoiceGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherReferencedVariables(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/Binding;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getAxisNavigation(Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/VennExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getAxisNavigation(Lnet/sf/saxon/expr/Expression;)I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getAxisNavigation(Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    if-ne v0, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getBaseURI(Lnet/sf/saxon/expr/StaticContext;Ljavax/xml/transform/SourceLocator;Z)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/functions/IriToUri;->iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_2
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v2

    :catch_2
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The base URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    invoke-static {p0, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid URI"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getContextDocumentSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    if-eqz p0, :cond_3

    instance-of v1, p0, Lnet/sf/saxon/expr/ContextSwitchingExpression;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/expr/ContextSwitchingExpression;

    invoke-interface {v1}, Lnet/sf/saxon/expr/ContextSwitchingExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/expr/ContextSwitchingExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getContextDocumentSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentDirectory()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFocusSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_2

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getItemFromProcessMethod(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->allocateSequenceOutputter(I)Lnet/sf/saxon/event/SequenceCollector;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceCollector;->getFirstItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceCollector;->reset()V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/NoDynamicContextException;

    const-string p1, "No controller available"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/NoDynamicContextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIteratorFromProcessMethod(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->allocateSequenceOutputter()Lnet/sf/saxon/event/SequenceCollector;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceCollector;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getReferenceCount(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Z)I
    .locals 6

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->isFiltered()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    const/16 v1, 0xa

    :cond_1
    add-int/2addr v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-nez p2, :cond_6

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->isEvaluatedRepeatedly()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v1

    :goto_1
    invoke-static {v5, p1, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getReferenceCount(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Z)I

    move-result v4

    add-int/2addr v0, v4

    if-lt v0, v2, :cond_4

    :cond_7
    move v1, v0

    :goto_2
    return v1
.end method

.method public static synthetic h(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->p(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static hasLoopingSubexpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->isEvaluatedRepeatedly()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Class;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->r(Ljava/lang/Class;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static indent(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->injectCode(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    goto :goto_2

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/TraceExpression;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/instruct/TraceExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/TraceExpression;->getChild()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/OperandRole;->isConstrainedClass()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/OperandRole;->isConstrainedClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->injectCode(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/parser/CodeInjector;->inject(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static inlineVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->inlineVariableReferencesInternal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static inlineVariableReferencesInternal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 5

    instance-of v0, p0, Lnet/sf/saxon/expr/TryCatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lnet/sf/saxon/expr/Literal;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v4

    if-ne v4, p1, :cond_1

    :try_start_0
    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, p2

    :goto_1
    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->inlineVariableReferencesInternal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_3
    return v1
.end method

.method public static isCallOnSystemFunction(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StaticFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalConstructor(Lnet/sf/saxon/expr/Expression;)Z
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    if-eqz p0, :cond_3

    instance-of v2, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getUsage()Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isLoopingReference(Lnet/sf/saxon/expr/VariableReference;Lnet/sf/saxon/expr/Binding;)Z
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/flwor/FLWORExpression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->hasLoopingVariableReference(Lnet/sf/saxon/expr/Binding;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->hasLoopingSubexpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tryCatch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    instance-of v2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->hasLoopingSubexpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method public static isLoopingSubexpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->hasLoopingSubexpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static isNotAllowedInUpdatingContext(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isVacuousExpression()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/ConditionalSorter;->getDocumentSorter()Lnet/sf/saxon/expr/sort/DocumentSorter;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->j(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eq v1, v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->j(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static k(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public static l(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/AxisExpression;

    return p0
.end method

.method public static lazyEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static lazyEvaluator(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Literal;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Literal;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SuppliedParameter;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SuppliedParameter;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0x6d

    if-eqz v0, :cond_3

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/expr/ErrorExpression;

    if-eqz v0, :cond_4

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluator(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/expr/TailExpression;

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/expr/TailExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz p0, :cond_6

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;

    return-object p0

    :cond_7
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    return-object p0

    :cond_8
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v0, :cond_9

    check-cast p0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->isCandidateForSharedAppend()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;

    return-object p0

    :cond_a
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    return-object p0
.end method

.method public static synthetic m(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/FunctionCall;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/FunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/FunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const-string v2, "XP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    :cond_0
    const/4 p4, -0x1

    if-ne p3, p4, :cond_1

    move p3, v3

    :cond_1
    invoke-virtual {v0, p0, p2, p3, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/RootExpression;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    instance-of v1, p1, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v1, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->l(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->l(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/SlashExpression;->setStart(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/SlashExpression;->setStep(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    return-object v0
.end method

.method public static markTailFunctionCalls(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "P+S"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->setExtraProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "inversion"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->setExtraProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic o(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UserFunctionCall;->allocateArgumentEvaluators()V

    :cond_0
    instance-of p1, p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    if-eqz p1, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/LocalParam;->computeEvaluationMode()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static optimizeComponentBody(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->promoteExpressionsToGlobal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/trans/GlobalVariableManager;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/expr/parser/LoopLifter;->process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->j(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->eliminateCommonSubexpressions(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_4
    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/Optimizer;->prepareForStreaming(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->computeEvaluationModesForUserFunctionCalls(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->restoreParentPointers()V

    return-object p0
.end method

.method public static synthetic p(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/expr/instruct/LocalParam;

    return p0
.end method

.method public static parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parenthesizeShort(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->k(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionAction;->process(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic q(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/LocalVariableReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/Expression;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic r(Ljava/lang/Class;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static rebindVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/VariableReference;->fixup(Lnet/sf/saxon/expr/Binding;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->rebindVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static refersToVariableOrFunction(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/f3g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/f3g;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static replaceCallsToCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-class v3, Lnet/sf/saxon/functions/Current;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v3, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-static {v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x1

    invoke-interface {p1, v3, v1}, Lnet/sf/saxon/expr/Binding;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceCallsToCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_2
    return v1
.end method

.method public static replaceSelectedSubexpressions(Lnet/sf/saxon/expr/Expression;Ljava/util/function/Predicate;Lnet/sf/saxon/expr/Expression;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            "Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move p3, v2

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v3, p1, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceSelectedSubexpressions(Lnet/sf/saxon/expr/Expression;Ljava/util/function/Predicate;Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static replaceTrivialCallsToCurrent(Lnet/sf/saxon/expr/Expression;)Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-class v3, Lnet/sf/saxon/functions/Current;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lnet/sf/saxon/expr/CurrentItemExpression;

    invoke-direct {v3}, Lnet/sf/saxon/expr/CurrentItemExpression;-><init>()V

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceTrivialCallsToCurrent(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_3
    return v1
.end method

.method public static replaceVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;Z)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/e3g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/e3g;-><init>(Lnet/sf/saxon/expr/Binding;)V

    invoke-static {p0, v0, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceSelectedSubexpressions(Lnet/sf/saxon/expr/Expression;Ljava/util/function/Predicate;Lnet/sf/saxon/expr/Expression;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public static resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    instance-of v0, p0, Lnet/sf/saxon/expr/LocalVariableReference;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/expr/Assignation;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lnet/sf/saxon/expr/Binding;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    add-int/lit8 v1, v0, 0x1

    const v2, 0x186a0

    if-gt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Loop in parent expression chain"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static resolveCallsToCurrentFunction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    const-class v0, Lnet/sf/saxon/functions/Current;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceTrivialCallsToCurrent(Lnet/sf/saxon/expr/Expression;)Z

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vv"

    const-string v4, "http://saxon.sf.net/generated-variable"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance v1, Lnet/sf/saxon/expr/CurrentItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/CurrentItemExpression;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->replaceCallsToCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)Z

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static synthetic s([Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/expr/VariableReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    move-object v4, p1

    check-cast v4, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object v4

    if-ne v4, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->setDeepRetainedStaticContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic t(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/Binding;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ApplyImports;

    if-nez v0, :cond_1

    const-string v0, "function-lookup"

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isCallOnSystemFunction(Lnet/sf/saxon/expr/Expression;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/sf/saxon/functions/ApplyFn;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static tryToFactorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    instance-of v0, p0, Lnet/sf/saxon/expr/ContextItemExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->factorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_4

    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "saxon"

    const-string v4, "http://saxon.sf.net/"

    invoke-direct {v1, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    const/16 v1, 0x4000

    invoke-static {p1, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    new-instance p1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->factorOutDot(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    return-object v1
.end method

.method public static synthetic u(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->isFilterIsPositional()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/TailExpression;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    check-cast p0, Lnet/sf/saxon/expr/UnaryExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/expr/SingleItemFilter;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    check-cast p0, Lnet/sf/saxon/expr/SingleItemFilter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static unsortedIfHomogeneous(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/VariableReference;
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/expr/Binding;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/GlobalVariableReference;

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/LocalVariableReference;

    check-cast p0, Lnet/sf/saxon/expr/LocalBinding;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    return-object v0
.end method

.method public static validateTree(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->checkedOperands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->validateTree(Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
