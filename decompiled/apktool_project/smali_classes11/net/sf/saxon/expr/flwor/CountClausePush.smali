.class public Lnet/sf/saxon/expr/flwor/CountClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/CountClause;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->d:I

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/flwor/CountClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->c:I

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget v2, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->d:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/CountClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method
