.class public Lnet/sf/saxon/resource/ExplicitCollection;
.super Lnet/sf/saxon/resource/AbstractResourceCollection;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/lib/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Configuration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/lib/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lnet/sf/saxon/resource/ExplicitCollection;->a:Ljava/util/List;

    iput-object p2, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/lib/Resource;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/resource/ExplicitCollection;->c(Lnet/sf/saxon/lib/Resource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/lib/Resource;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/lib/Resource;->getResourceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;

    iget-object p0, p0, Lnet/sf/saxon/resource/ExplicitCollection;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/b2g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/b2g;-><init>()V

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object p1
.end method

.method public getResources(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/lib/Resource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/resource/ExplicitCollection;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public stripWhitespace(Lnet/sf/saxon/om/SpaceStrippingRule;)Z
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/resource/ExplicitCollection;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    const/4 p0, 0x0

    return p0
.end method
