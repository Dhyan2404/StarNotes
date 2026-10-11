.class public Lnet/sf/saxon/expr/instruct/AnalyzeString;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# static fields
.field public static final t:Lnet/sf/saxon/expr/OperandRole;

.field public static final u:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;

.field public final p:Lnet/sf/saxon/expr/Operand;

.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Lnet/sf/saxon/expr/Operand;

.field public s:Lnet/sf/saxon/regex/RegularExpression;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v1, 0x6

    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->t:Lnet/sf/saxon/expr/OperandRole;

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->u:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/regex/RegularExpression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/instruct/AnalyzeString;->u:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p2, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    invoke-direct {p1, p0, p3, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    if-eqz p4, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/instruct/AnalyzeString;->t:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p4, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    :cond_0
    if-eqz p5, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/instruct/AnalyzeString;->t:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p5, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    :cond_1
    iput-object p6, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->i(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getInstance()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    :cond_1
    return-void
.end method

.method public computeDependencies()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, -0x5f

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit8 p0, p0, -0x5f

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 8

    new-instance v7, Lnet/sf/saxon/expr/instruct/AnalyzeString;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/AnalyzeString;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/regex/RegularExpression;)V

    invoke-static {p0, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v7
.end method

.method public final e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "analyzeString"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "regex"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "matching"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "nonMatching"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/regex/RegexIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-string v2, "XP30"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {v1, p0}, Lnet/sf/saxon/regex/RegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "analyzeString"

    return-object p0
.end method

.method public getFlags()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x83

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public getMatching()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNonMatching()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPatternExpression()Lnet/sf/saxon/regex/RegularExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    return-object p0
.end method

.method public getRegex()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->g(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentRegexIterator(Lnet/sf/saxon/regex/RegexIterator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v2, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v3, Lcom/sunia/HTREnginev2/da;

    invoke-direct {v3, v0, v1, p1, p0}, Lcom/sunia/HTREnginev2/da;-><init>(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;)V

    invoke-direct {v2, v3, p1}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v2
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    if-eqz p2, :cond_1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->precomputeRegex(Lnet/sf/saxon/Configuration;Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public precomputeRegex(Lnet/sf/saxon/Configuration;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Configuration;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XP30"

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2, p2}, Lnet/sf/saxon/Configuration;->compileRegularExpression(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->s:Lnet/sf/saxon/regex/RegularExpression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "XTDE1150"

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FORX0001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in regular expression flags: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in regular expression: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->g(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v2

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentRegexIterator(Lnet/sf/saxon/regex/RegexIterator;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getNonMatching()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setFlags(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setMatching(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/instruct/AnalyzeString;->t:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    :goto_0
    return-void
.end method

.method public setNonMatching(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/instruct/AnalyzeString;->t:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    :goto_0
    return-void
.end method

.method public setRegex(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->p:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->q:Lnet/sf/saxon/expr/Operand;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/AnalyzeString;->r:Lnet/sf/saxon/expr/Operand;

    if-eqz p2, :cond_1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v2, "analyze-string/select"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_STRING:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p2, v4, v2, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v2, "analyze-string/regex"

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getRegex()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p2, v2, v4, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->setRegex(Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v2, "analyze-string/flags"

    invoke-direct {v0, v3, v2, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->getFlags()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p2, v1, v4, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->setFlags(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
