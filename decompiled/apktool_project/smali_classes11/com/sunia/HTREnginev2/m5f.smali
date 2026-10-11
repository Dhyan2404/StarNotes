.class public final synthetic Lcom/sunia/HTREnginev2/m5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/resource/DirectoryCollection;

.field public final synthetic f:Lnet/sf/saxon/lib/ParseOptions;

.field public final synthetic g:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/resource/DirectoryCollection;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m5f;->e:Lnet/sf/saxon/resource/DirectoryCollection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m5f;->f:Lnet/sf/saxon/lib/ParseOptions;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/m5f;->g:Lnet/sf/saxon/expr/XPathContext;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/m5f;->h:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m5f;->e:Lnet/sf/saxon/resource/DirectoryCollection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/m5f;->f:Lnet/sf/saxon/lib/ParseOptions;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/m5f;->g:Lnet/sf/saxon/expr/XPathContext;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/m5f;->h:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/resource/DirectoryCollection;->b(Lnet/sf/saxon/resource/DirectoryCollection;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;ZLjava/lang/String;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method
