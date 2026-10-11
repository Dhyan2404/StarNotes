.class public final Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedAppend"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz p0, :cond_3

    check-cast p1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Block;->getOperanda()[Lnet/sf/saxon/expr/Operand;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {p1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->appendSequence(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/zeno/ZenoSequence;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->append(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/ma/zeno/ZenoSequence;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public getCode()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method
