.class public Lnet/sf/saxon/expr/flwor/ForMemberClausePull;
.super Lnet/sf/saxon/expr/flwor/ForClausePull;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/ma/arrays/ArrayItem;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForMemberClause;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/flwor/ForMemberClausePull;->b(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/Item;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getIterator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClausePull;->forClause:Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ForMemberClausePull;->a:Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;

    new-instance v0, Lcom/sunia/HTREnginev2/ssg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ssg;-><init>()V

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object p1
.end method

.method public variableValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method
