.class public Lnet/sf/saxon/expr/flwor/WhereClausePush;
.super Lnet/sf/saxon/expr/flwor/TuplePush;
.source "SourceFile"


# instance fields
.field public b:Lnet/sf/saxon/expr/flwor/TuplePush;

.field public c:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/WhereClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/WhereClausePush;->c:Lnet/sf/saxon/expr/Expression;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePush;->close()V

    return-void
.end method

.method public processTuple(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePush;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WhereClausePush;->b:Lnet/sf/saxon/expr/flwor/TuplePush;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TuplePush;->processTuple(Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-void
.end method
