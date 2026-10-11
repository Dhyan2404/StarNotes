.class public final synthetic Lcom/sunia/HTREnginev2/rsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/ForExpression;

.field public final synthetic b:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic c:I

.field public final synthetic d:Lnet/sf/saxon/expr/PendingUpdateList;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/ForExpression;Lnet/sf/saxon/expr/XPathContext;ILnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rsg;->a:Lnet/sf/saxon/expr/ForExpression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rsg;->b:Lnet/sf/saxon/expr/XPathContext;

    iput p3, p0, Lcom/sunia/HTREnginev2/rsg;->c:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/rsg;->d:Lnet/sf/saxon/expr/PendingUpdateList;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rsg;->a:Lnet/sf/saxon/expr/ForExpression;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rsg;->b:Lnet/sf/saxon/expr/XPathContext;

    iget v2, p0, Lcom/sunia/HTREnginev2/rsg;->c:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rsg;->d:Lnet/sf/saxon/expr/PendingUpdateList;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/expr/ForExpression;->i(Lnet/sf/saxon/expr/ForExpression;Lnet/sf/saxon/expr/XPathContext;ILnet/sf/saxon/expr/PendingUpdateList;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
