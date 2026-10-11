.class public final synthetic Lcom/sunia/HTREnginev2/ice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/CopyOf;

.field public final synthetic b:Lnet/sf/saxon/event/Outputter;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ice;->a:Lnet/sf/saxon/expr/instruct/CopyOf;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ice;->b:Lnet/sf/saxon/event/Outputter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ice;->c:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ice;->a:Lnet/sf/saxon/expr/instruct/CopyOf;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ice;->b:Lnet/sf/saxon/event/Outputter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ice;->c:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->e(Lnet/sf/saxon/expr/instruct/CopyOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
