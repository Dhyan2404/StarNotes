.class public interface abstract Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation
.end method

.method public abstract readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation
.end method
