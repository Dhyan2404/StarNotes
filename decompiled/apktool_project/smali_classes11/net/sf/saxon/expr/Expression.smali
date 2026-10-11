.class public abstract Lnet/sf/saxon/expr/Expression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/IdentityComparable;
.implements Lnet/sf/saxon/expr/ExportAgent;
.implements Lnet/sf/saxon/expr/Locatable;
.implements Lnet/sf/saxon/trace/Traceable;


# static fields
.field public static final EFFECTIVE_BOOLEAN_VALUE:I = 0x20

.field public static final EVALUATE_METHOD:I = 0x1

.field public static final ITEM_FEED_METHOD:I = 0x10

.field public static final ITERATE_METHOD:I = 0x2

.field public static final MAX_COST:D = 1.0E9

.field public static final MAX_SEQUENCE_LENGTH:Lnet/sf/saxon/value/IntegerValue;

.field public static final MAX_STRING_LENGTH:Lnet/sf/saxon/value/IntegerValue;

.field public static final PROCESS_METHOD:I = 0x4

.field public static final UNBOUNDED_LOWER:Lnet/sf/saxon/value/IntegerValue;

.field public static final UNBOUNDED_UPPER:Lnet/sf/saxon/value/IntegerValue;

.field public static final UPDATE_METHOD:I = 0x40

.field public static final WATCH_METHOD:I = 0x8

.field public static final synthetic m:Z


# instance fields
.field public e:Lnet/sf/saxon/s9api/Location;

.field public f:Lnet/sf/saxon/expr/Expression;

.field public g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

.field public h:[I

.field public i:I

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public k:D

.field public l:I

.field protected staticProperties:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide v0, -0x2b4db652da6b3c83L    # -1.0E100

    invoke-static {v0, v1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    sput-object v0, Lnet/sf/saxon/expr/Expression;->UNBOUNDED_LOWER:Lnet/sf/saxon/value/IntegerValue;

    const-wide v0, 0x54b249ad2594c37dL    # 1.0E100

    invoke-static {v0, v1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    sput-object v0, Lnet/sf/saxon/expr/Expression;->UNBOUNDED_UPPER:Lnet/sf/saxon/value/IntegerValue;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/expr/Expression;->MAX_STRING_LENGTH:Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/Expression;->MAX_SEQUENCE_LENGTH:Lnet/sf/saxon/value/IntegerValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iput-object v1, p0, Lnet/sf/saxon/expr/Expression;->e:Lnet/sf/saxon/s9api/Location;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lnet/sf/saxon/expr/Expression;->k:D

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->l:I

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static b(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntHashSet;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getInterpretedExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/LocalVariableReference;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LocalVariableReference;->getSlotNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/SuppliedParameterReference;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/SuppliedParameterReference;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SuppliedParameterReference;->getSlotNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/Expression;->b(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntHashSet;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 6

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    if-eqz v0, :cond_2

    new-instance p2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p2

    invoke-direct {v0, p2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    move-object p2, v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getUsage()Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    if-ne v4, v5, :cond_3

    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addNodeSet(Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method public adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p1, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iput-object v0, p1, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v0, v1, :cond_5

    :cond_3
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    return-void
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkForUpdatingSubexpressions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

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

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Updating expression appears in a context where it is not permitted"

    const-string v2, "XUST0001"

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_1
    return-void
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final checkedOperands()Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, p0, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    if-eq v6, p0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Bad parent pointer found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string v2, "operand "

    goto :goto_3

    :cond_4
    const-string v2, "expression "

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ***"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_6
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object v0
.end method

.method public abstract computeCardinality()I
.end method

.method public computeDependencies()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, -0x1f

    :goto_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public computeHashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final computeStaticProperties()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeDependencies()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeCardinality()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    return-void
.end method

.method public abstract copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
.end method

.method public dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v0
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isVacuousExpression()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expression "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not an updating expression"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final explain(Lnet/sf/saxon/lib/Logger;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/Logger;)V

    new-instance p1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    invoke-direct {p1}, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->explaining:Z

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->setOptions(Lnet/sf/saxon/trace/ExpressionPresenter$Options;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failure"

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string p1, "message"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->close()V

    return-void
.end method

.method public abstract export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getCardinality()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeStaticProperties()V

    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const v0, 0xe000

    and-int/2addr p0, v0

    return p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: expression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no retained static context"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCost()D
    .locals 5

    iget-wide v0, p0, Lnet/sf/saxon/expr/Expression;->k:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getNetCost()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v3

    add-double/2addr v0, v3

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    :cond_1
    iput-wide v0, p0, Lnet/sf/saxon/expr/Expression;->k:D

    :cond_2
    iget-wide v0, p0, Lnet/sf/saxon/expr/Expression;->k:D

    return-wide v0
.end method

.method public getDependencies()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeStaticProperties()V

    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const v0, 0x2000fff

    and-int/2addr p0, v0

    return p0
.end method

.method public getEvaluationMethod()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/Expression;->i:I

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtraProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->j:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImplementationMethod()I
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterpretedExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getItemType()Lnet/sf/saxon/type/ItemType;
.end method

.method public getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public final getLocation()Lnet/sf/saxon/s9api/Location;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/Expression;->e:Lnet/sf/saxon/s9api/Location;

    if-eqz v1, :cond_0

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->e:Lnet/sf/saxon/s9api/Location;

    return-object p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->e:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: expression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no retained static context"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->f:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getProperties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/tree/jiter/MonoIterator;

    const-string v0, "expression"

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/jiter/MonoIterator;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "expression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0x1e

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getContextDocumentSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getFocusSettingContainer(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getSlotsUsed()[I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->h:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/Expression;->b(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/z/IntHashSet;)V

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/sf/saxon/expr/Expression;->h:[I

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/Expression;->h:[I

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v4

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->h:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->h:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSpecialProperties()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeStaticProperties()V

    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    return p0
.end method

.method public getStaticBaseURI()Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public getStaticBaseURIString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStaticType()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTracingTag()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCompatibleStaticContext(Lnet/sf/saxon/expr/Expression;)Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public hasSpecialProperty(I)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/Expression;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->l:I

    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/Expression;->l:I

    return p0
.end method

.method public identityHashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public implementsStaticTypeCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCallOn(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final isEqual(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->equals(Ljava/lang/Object;)Z

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

.method public isIdentical(Lnet/sf/saxon/om/IdentityComparable;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLiftable(Z)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000000

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    and-int/lit16 p1, p0, 0x200

    if-nez p1, :cond_0

    and-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiThreaded(Lnet/sf/saxon/Configuration;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStaticPropertiesKnown()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubtreeExpression()Z
    .locals 3

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0x1e

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

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

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isSubtreeExpression()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public isUpdatingExpression()Z
    .locals 1

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

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public varargs operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/sf/saxon/expr/Operand;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/sf/saxon/expr/Operand;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->incrementAndTestDepth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->decrementDepth()V

    :cond_0
    return-object p0
.end method

.method public final optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

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

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareForStreaming()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/v2g;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/v2g;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/event/Outputter;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process() is not implemented in the subclass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    iput v0, p0, Lnet/sf/saxon/expr/Expression;->l:I

    return-void
.end method

.method public restoreParentPointers()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->restoreParentPointers()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEvaluationMethod(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/Expression;->i:I

    return-void
.end method

.method public setExtraProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Expression;->j:Ljava/util/Map;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/Expression;->j:Ljava/util/Map;

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/Expression;->j:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setFiltered(Z)V
    .locals 0

    return-void
.end method

.method public setFlattened(Z)V
    .locals 0

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Expression;->e:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setParentExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Expression;->f:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_0
    return-void
.end method

.method public setRetainedStaticContextThoroughly(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V
    .locals 2

    if-eqz p1, :cond_3

    iput-object p1, p0, Lnet/sf/saxon/expr/Expression;->g:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextThoroughly(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextThoroughly(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setStaticProperty(I)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeStaticProperties()V

    :cond_0
    iget v0, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/expr/Expression;->staticProperties:I

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->simplifyChildren()V

    return-object p0
.end method

.method public final simplifyChildren()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "staticTypeCheck"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public suppressValidation(I)V
    .locals 0

    return-void
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_1

    instance-of p1, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-nez p1, :cond_0

    instance-of p1, p0, Lnet/sf/saxon/expr/VariableReference;

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lnet/sf/saxon/pattern/NodeSetPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeSetPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_1
    const-class p1, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Lnet/sf/saxon/functions/SuperId;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert the expression {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "} to a pattern"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-instance p1, Lnet/sf/saxon/pattern/NodeSetPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeSetPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    const-string v1, "("

    goto :goto_2

    :cond_1
    const-string v1, ", "

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public final typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

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

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v0, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public verifyParentPointers()Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

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

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v3, " subexpression "

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-ne v4, p0, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->findOperand(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Operand;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->verifyParentPointers()Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect parent pointer in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parent pointer in operand object "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parent pointer in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method
