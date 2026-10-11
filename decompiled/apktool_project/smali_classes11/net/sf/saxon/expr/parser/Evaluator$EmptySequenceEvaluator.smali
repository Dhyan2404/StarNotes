.class public final Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptySequenceEvaluator"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;

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

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method
