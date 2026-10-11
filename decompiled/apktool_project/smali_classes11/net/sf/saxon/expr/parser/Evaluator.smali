.class public abstract Lnet/sf/saxon/expr/parser/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;,
        Lnet/sf/saxon/expr/parser/Evaluator$Process;,
        Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;,
        Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;,
        Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;,
        Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;,
        Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;,
        Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;,
        Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;,
        Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;,
        Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;,
        Lnet/sf/saxon/expr/parser/Evaluator$SuppliedParameter;,
        Lnet/sf/saxon/expr/parser/Evaluator$Variable;,
        Lnet/sf/saxon/expr/parser/Evaluator$Literal;,
        Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getCode()I
.end method
