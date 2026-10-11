.class public final synthetic Lcom/sunia/HTREnginev2/bmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemFilter$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/om/Function;

.field public final synthetic b:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bmg;->a:Lnet/sf/saxon/om/Function;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bmg;->b:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final test(Lnet/sf/saxon/om/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bmg;->a:Lnet/sf/saxon/om/Function;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bmg;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/functions/hof/FilterFn;->a(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method
