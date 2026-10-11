.class public final synthetic Lcom/sunia/HTREnginev2/msg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/Expression;

.field public final synthetic b:Lnet/sf/saxon/event/Outputter;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContextMajor;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/msg;->a:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/msg;->b:Lnet/sf/saxon/event/Outputter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/msg;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/msg;->a:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/msg;->b:Lnet/sf/saxon/event/Outputter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/msg;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/expr/instruct/ForEach;->g(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
