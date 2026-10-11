.class public Lnet/sf/saxon/expr/flwor/WhereClausePull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public b:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/WhereClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/WhereClausePull;->b:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePull;->a:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePull;->b:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
