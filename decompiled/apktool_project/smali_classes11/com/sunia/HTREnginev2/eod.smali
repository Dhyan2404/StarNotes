.class public final synthetic Lcom/sunia/HTREnginev2/eod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/resource/CatalogCollection;

.field public final synthetic f:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/resource/CatalogCollection;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eod;->e:Lnet/sf/saxon/resource/CatalogCollection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eod;->f:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eod;->e:Lnet/sf/saxon/resource/CatalogCollection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eod;->f:Lnet/sf/saxon/expr/XPathContext;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/resource/CatalogCollection;->b(Lnet/sf/saxon/resource/CatalogCollection;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method
