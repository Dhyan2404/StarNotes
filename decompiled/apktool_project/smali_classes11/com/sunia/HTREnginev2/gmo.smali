.class public final synthetic Lcom/sunia/HTREnginev2/gmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/Configuration;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gmo;->a:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gmo;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gmo;->c:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gmo;->a:Lnet/sf/saxon/Configuration;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gmo;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gmo;->c:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/xpath/XPathFunctionCall;->d(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
