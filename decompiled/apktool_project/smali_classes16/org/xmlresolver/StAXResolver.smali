.class public Lorg/xmlresolver/StAXResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLResolver;


# instance fields
.field public a:Lorg/xmlresolver/ResourceResolver;

.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    .line 3
    new-instance v0, Lorg/xmlresolver/XMLResolverConfiguration;

    invoke-direct {v0}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>()V

    .line 4
    new-instance v1, Lorg/xmlresolver/CatalogResolver;

    invoke-direct {v1, v0}, Lorg/xmlresolver/CatalogResolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v1, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    .line 5
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object v0, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResourceResolver;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    .line 12
    invoke-interface {p1}, Lorg/xmlresolver/ResourceResolver;->getConfiguration()Lorg/xmlresolver/ResolverConfiguration;

    move-result-object p1

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    .line 8
    new-instance v0, Lorg/xmlresolver/CatalogResolver;

    invoke-direct {v0, p1}, Lorg/xmlresolver/CatalogResolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v0, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    .line 9
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/xmlresolver/ResolverConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    invoke-interface {p0}, Lorg/xmlresolver/ResourceResolver;->getConfiguration()Lorg/xmlresolver/ResolverConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v1, "resolveEntity: %s/%s (baseURI: %s, %s)"

    filled-new-array {p2, p4, p3, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "request"

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/StAXResolver;->a:Lorg/xmlresolver/ResourceResolver;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/xmlresolver/ResourceResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v0

    const-string v2, "response"

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v0, "resolvedEntity: %s/%s (baseURI: %s, %s) \u2192 null"

    filled-new-array {p2, p4, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v2, v0, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/StAXResolver;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v0}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object v1

    filled-new-array {p2, p4, p3, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resolvedEntity: %s/%s (baseURI: %s, %s) \u2192 %s"

    invoke-interface {p0, v2, p2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
