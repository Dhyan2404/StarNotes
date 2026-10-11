.class public final Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeIndexedVariable"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/Optimizer;->makeIndexedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method
