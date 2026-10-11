.class public Lorg/apache/xmlbeans/impl/tool/MavenPluginResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/xmlbeans/impl/util/SuppressForbidden;
    value = "class is available in Java 8 and multi-release version handles newer official package namespace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->setCatalogFiles(Ljava/lang/String;)V

    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    return-object p0
.end method
