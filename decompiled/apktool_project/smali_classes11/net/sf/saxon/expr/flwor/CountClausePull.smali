.class public Lnet/sf/saxon/expr/flwor/CountClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/CountClause;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->c:I

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/CountClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->b:I

    return-void
.end method


# virtual methods
.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->c:I

    iget p0, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->b:I

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-interface {p1, p0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    return v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->b:I

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget v2, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/expr/flwor/CountClausePull;->c:I

    int-to-long v4, v2

    invoke-direct {v1, v4, v5}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    return v3
.end method
