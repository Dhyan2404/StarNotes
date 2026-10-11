.class public final Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyTail"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/expr/TailExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/VariableReference;

    sget-object v0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    invoke-virtual {v0, p0, p2}, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/MemoClosure;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/IntegerRange;

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getStep()J

    move-result-wide v3

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getStart()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/TailExpression;->getStart()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long p1, p1

    mul-long/2addr p1, v3

    add-long v1, v0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getEnd()J

    move-result-wide v5

    cmp-long p0, v1, v5

    if-nez p0, :cond_1

    invoke-static {v5, v6}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez p0, :cond_2

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/value/IntegerRange;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/TailExpression;->getStart()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/TailExpression;->getStart()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, p2, v0}, Lnet/sf/saxon/om/GroundedValue;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/value/MemoClosure;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/MemoClosure;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method
