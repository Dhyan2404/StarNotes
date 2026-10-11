.class public final synthetic Lcom/sunia/HTREnginev2/a0l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemFilter$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/Pattern;

.field public final synthetic b:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0l;->a:Lnet/sf/saxon/pattern/Pattern;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/a0l;->b:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final test(Lnet/sf/saxon/om/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0l;->a:Lnet/sf/saxon/pattern/Pattern;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0l;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/pattern/Pattern;->i(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method
