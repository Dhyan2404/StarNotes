.class public final synthetic Lcom/sunia/HTREnginev2/njk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/lib/OutputURIResolver;

.field public final synthetic b:Ljavax/xml/transform/Result;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/njk;->a:Lnet/sf/saxon/lib/OutputURIResolver;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/njk;->b:Ljavax/xml/transform/Result;

    return-void
.end method


# virtual methods
.method public final act()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/njk;->a:Lnet/sf/saxon/lib/OutputURIResolver;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/njk;->b:Ljavax/xml/transform/Result;

    invoke-static {v0, p0}, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->a(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V

    return-void
.end method
