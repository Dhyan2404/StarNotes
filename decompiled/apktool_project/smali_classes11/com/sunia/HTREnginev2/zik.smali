.class public final synthetic Lcom/sunia/HTREnginev2/zik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/flwor/OuterForExpression;

.field public final synthetic b:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/flwor/OuterForExpression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zik;->a:Lnet/sf/saxon/expr/flwor/OuterForExpression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zik;->b:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zik;->a:Lnet/sf/saxon/expr/flwor/OuterForExpression;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zik;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/flwor/OuterForExpression;->m(Lnet/sf/saxon/expr/flwor/OuterForExpression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
