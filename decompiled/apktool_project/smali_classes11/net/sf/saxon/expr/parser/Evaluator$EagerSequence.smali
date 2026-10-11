.class public final Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EagerSequence"
.end annotation


# static fields
.field public static INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

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

    :try_start_0
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

    const/16 p0, 0x8

    return p0
.end method
