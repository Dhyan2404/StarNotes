.class public final Lnet/sf/saxon/expr/parser/Evaluator$Variable;
.super Lnet/sf/saxon/expr/parser/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variable"
.end annotation


# static fields
.field public static INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

.field public static final synthetic a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/Evaluator$Variable;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

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
    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/VariableReference;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
