.class public Lcom/sun/org/apache/xpath/internal/compiler/Compiler;
.super Lcom/sun/org/apache/xpath/internal/compiler/OpMap;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static s_nextMethodId:J


# instance fields
.field private locPathDepth:I

.field private m_currentPrefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

.field m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field m_locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_currentPrefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_currentPrefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 6
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    return-void
.end method

.method private compileExtension(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    new-instance v3, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getNextMethodId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Lcom/sun/org/apache/xpath/internal/functions/Function;->setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V
    :try_end_0
    .catch Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    :catch_0
    :cond_0
    return-object v3
.end method

.method private compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation;->setLeftRight(Lcom/sun/org/apache/xpath/internal/Expression;Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object p1
.end method

.method private compilePredicates(I[Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->predicate(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compileUnary(Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;->setRight(Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object p1
.end method

.method private declared-synchronized getNextMethodId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->s_nextMethodId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->s_nextMethodId:J

    :cond_0
    sget-wide v0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->s_nextMethodId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->s_nextMethodId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public and(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/And;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/And;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public arg(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bool(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Bool;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Bool;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileUnary(Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public compile(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const-string v1, "ER_UNKNOWN_OPCODE"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locationPathPattern(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->matchPattern(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locationPath(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->numberlit(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->arg(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileFunction(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileExtension(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->group(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->variable(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->literal(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->union(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->number(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->bool(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->string(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->neg(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_f
    const-string p1, "quo"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->mod(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->div(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->mult(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->minus(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->plus(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->gt(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->gte(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->lt(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->lte(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->equals(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->notequals(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->and(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->or(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    goto :goto_0

    :pswitch_1d
    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    :goto_0
    :pswitch_1e
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compileFunction(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->getFunction(I)Lcom/sun/org/apache/xpath/internal/functions/Function;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xpath/internal/functions/FuncExtFunctionAvailable;->setFunctionTable(Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V

    :cond_0
    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xpath/internal/functions/Function;->postCompileStep(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;)V

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/sun/org/apache/xpath/internal/functions/Function;->setArg(Lcom/sun/org/apache/xpath/internal/Expression;I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/functions/Function;->checkNumberArgs(I)V
    :try_end_0
    .catch Lcom/sun/org/apache/xpath/internal/functions/WrongNumberArgsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->getFunctionName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_ONLY_ALLOWS"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_1
    return-object v2

    :cond_2
    const-string p1, "ER_FUNCTION_TOKEN_NOT_FOUND"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public countPredicates(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public div(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Div;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Div;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public equals(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Equals;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Equals;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    new-instance p2, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {p2, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p2
.end method

.method public getCompiledPredicates(I)[Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->countPredicates(I)I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compilePredicates(I[Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFunctionTable()Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_functionTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    return-object p0
.end method

.method public getLocationPathDepth()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    return p0
.end method

.method public getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_currentPrefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-object p0
.end method

.method public getWhatToShow(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p1

    const/16 v1, 0x22

    const/16 v2, 0x1000

    const/4 v3, 0x2

    const/16 v4, 0x33

    const/16 v5, 0x31

    const/16 v6, 0x27

    if-eq p1, v1, :cond_5

    const/16 v1, 0x23

    if-eq p1, v1, :cond_4

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const/high16 p0, 0x10000

    return p0

    :pswitch_1
    const/16 p1, 0x26

    if-eq v0, p1, :cond_3

    if-eq v0, v6, :cond_2

    const/16 p1, 0x2a

    if-eq v0, p1, :cond_3

    if-eq v0, v4, :cond_2

    const/16 p1, 0x30

    if-eq v0, p1, :cond_3

    if-eq v0, v5, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_0

    const/16 p0, -0x503

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v1

    :pswitch_2
    const/16 p0, 0x40

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0x80

    return p0

    :cond_4
    const/16 p0, 0x500

    return p0

    :cond_5
    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_6
    return v2

    :cond_7
    return v3

    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public group(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public gt(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Gt;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Gt;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public gte(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Gte;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Gte;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public literal(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public locationPath(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->newDTMIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IZ)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    throw p1
.end method

.method public locationPathPattern(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->stepPattern(IILcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object p0

    return-object p0
.end method

.method public lt(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Lt;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Lt;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public lte(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Lte;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Lte;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public matchPattern(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    const/4 v0, 0x0

    move v2, p1

    move v3, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    return-object p1

    :cond_1
    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;

    invoke-direct {v2}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;-><init>()V

    new-array v3, v3, [Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    aput-object p1, v3, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/patterns/UnionPattern;->setPatterns([Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    return-object v2

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    throw p1
.end method

.method public minus(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Minus;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Minus;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public mod(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Mod;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Mod;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public mult(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Mult;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Mult;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public neg(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Neg;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Neg;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileUnary(Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public notequals(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/NotEquals;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/NotEquals;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public number(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Number;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Number;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileUnary(Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public numberlit(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    return-object p0
.end method

.method public or(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Or;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Or;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public plus(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Plus;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Plus;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileOperation(Lcom/sun/org/apache/xpath/internal/operations/Operation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public predicate(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public setNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_currentPrefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-void
.end method

.method public stepPattern(IILcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getNextOpPos(I)I

    move-result v1

    const/16 v3, 0x19

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string p1, "ER_UNKNOWN_MATCH_OPERATION"

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    new-instance v9, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    new-instance v9, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getWhatToShow(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result v2

    new-instance v9, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    const/4 v4, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x2

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    :goto_0
    move p1, v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPosOfStep(I)I

    move-result p1

    new-instance v9, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    const/16 v2, 0x500

    invoke-direct {v9, v2, v5, v4}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;-><init>(III)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v0

    new-instance v9, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileFunction(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v2

    invoke-direct {v9, v2, v5, v4}, Lcom/sun/org/apache/xpath/internal/patterns/FunctionPattern;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;II)V

    :goto_1
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->getCompiledPredicates(I)[Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setPredicates([Lcom/sun/org/apache/xpath/internal/Expression;)V

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, p3}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->setRelativePathPattern(Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, v1, p2, v9}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->stepPattern(IILcom/sun/org/apache/xpath/internal/patterns/StepPattern;)Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    move-result-object p0

    if-eqz p0, :cond_3

    move-object v9, p0

    :cond_3
    return-object v9

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public string(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/String;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/String;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compileUnary(Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p0

    return-object p0
.end method

.method public union(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    :try_start_0
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/UnionPathIterator;->createUnionIterator(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;I)Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->locPathDepth:I

    throw p1
.end method

.method public variable(I)Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/operations/Variable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/operations/Variable;-><init>()V

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getTokenQueue()Lcom/sun/org/apache/xml/internal/utils/ObjectVector;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/OpMap;->getOp(I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {p1, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/operations/Variable;->setQName(Lcom/sun/org/apache/xml/internal/utils/QName;)V

    return-object v0
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz p2, :cond_0

    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; file "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; line "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; column "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
