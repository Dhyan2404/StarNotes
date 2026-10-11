.class public Lnet/sf/saxon/expr/parser/LoopLifter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/parser/LoopLifter$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "marker"

.field public static final synthetic i:Z


# instance fields
.field public a:Lnet/sf/saxon/expr/Expression;

.field public final b:Lnet/sf/saxon/Configuration;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/parser/LoopLifter$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->c:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->d:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->e:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->f:Z

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->b:Lnet/sf/saxon/Configuration;

    sget-object p1, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->e:Z

    iput-boolean p3, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->f:Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/parser/LoopLifter;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/parser/LoopLifter;->d(ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget p2, p0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    const/4 p0, 0x0

    return p0
.end method

.method public static process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-nez v0, :cond_2

    instance-of v0, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/parser/LoopLifter;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/parser/LoopLifter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/LoopLifter;->gatherInfo(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/parser/LoopLifter;->f(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->d:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetPropertiesWithinSubtree(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_1
    iget-object p0, v0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/expr/Expression;IIZ)V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/LoopLifter$b;-><init>(Lnet/sf/saxon/expr/parser/LoopLifter$a;)V

    iput-object p1, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->a:Lnet/sf/saxon/expr/Expression;

    iput p3, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    iput-boolean p4, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->c:Z

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getScopingExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/LoopLifter;->g(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_2

    iget-object p4, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->b:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, p4}, Lnet/sf/saxon/expr/Expression;->isMultiThreaded(Lnet/sf/saxon/Configuration;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v0

    :goto_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/LoopLifter;->c(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/parser/LoopLifter;->g(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->isEvaluatedRepeatedly()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p3, 0x1

    goto :goto_3

    :cond_4
    move v1, p3

    :goto_3
    invoke-virtual {p0, v2, v3, v1, p4}, Lnet/sf/saxon/expr/parser/LoopLifter;->b(Lnet/sf/saxon/expr/Expression;IIZ)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final c(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/ConditionalInstruction;

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/OperandRole;->isInChoiceGroup()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    instance-of p0, p1, Lnet/sf/saxon/expr/TryCatch;

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->d:Z

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget v3, v1, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    iget v4, v2, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v5}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vv"

    const-string v9, "http://saxon.sf.net/generated-variable"

    invoke-direct {v6, v8, v9, v7}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v7

    invoke-static {v6, v7}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-static {p1, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/LetExpression;->setNeedsLazyEvaluation(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v7

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;

    goto :goto_0

    :cond_0
    sget-object v7, Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;

    :goto_0
    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    invoke-virtual {v5, p2}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    new-instance v7, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lnet/sf/saxon/expr/parser/LoopLifter$b;-><init>(Lnet/sf/saxon/expr/parser/LoopLifter$a;)V

    iput-object v5, v7, Lnet/sf/saxon/expr/parser/LoopLifter$b;->a:Lnet/sf/saxon/expr/Expression;

    iget-object v1, v1, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    iput-object v1, v7, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    iget-object v9, v2, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget v1, v2, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    iput v1, v7, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/sunia/HTREnginev2/b6j;

    invoke-direct {v1, p0, v3}, Lcom/sunia/HTREnginev2/b6j;-><init>(Lnet/sf/saxon/expr/parser/LoopLifter;I)V

    invoke-static {p1, v8, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    :goto_1
    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, v5}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v2

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    invoke-virtual {v1, v6, v8, v2}, Lnet/sf/saxon/expr/VariableReference;->setStaticType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;I)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/VariableReference;->setInLoop(Z)V

    invoke-virtual {v5, v1, v0}, Lnet/sf/saxon/expr/Assignation;->addReference(Lnet/sf/saxon/expr/VariableReference;Z)V

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->e:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->b:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : At line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : Lifted ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") above ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") on line "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OPT : Expression after rewrite: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-object v5
.end method

.method public final f(Lnet/sf/saxon/expr/Expression;)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget-boolean v1, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->c:Z

    if-nez v1, :cond_4

    iget v1, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getNetCost()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->f:Z

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->isLiftable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/LoopLifter;->h(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/LoopLifter;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    move-object v2, p1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget v0, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    iget v3, v3, Lnet/sf/saxon/expr/parser/LoopLifter$b;->b:I

    if-eq v0, v3, :cond_2

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->f:Z

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Expression;->isLiftable(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v2, Lnet/sf/saxon/expr/PseudoExpression;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/OperandRole;->isConstrainedClass()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/expr/parser/LoopLifter;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getOperandRole()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/OperandRole;->isConstrainedClass()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/LoopLifter;->f(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-eqz p2, :cond_0

    :goto_0
    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;

    iget-object v0, v0, Lnet/sf/saxon/expr/parser/LoopLifter$b;->d:Ljava/util/Map;

    const-string v1, "marker"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->validateTree(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0

    :cond_0
    return-void
.end method

.method public gatherInfo(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lnet/sf/saxon/expr/parser/LoopLifter;->b(Lnet/sf/saxon/expr/Expression;IIZ)V

    return-void
.end method

.method public getRoot()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->a:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/LoopLifter;->f:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
