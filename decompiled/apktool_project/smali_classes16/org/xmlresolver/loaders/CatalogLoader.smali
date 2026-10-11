.class public interface abstract Lorg/xmlresolver/loaders/CatalogLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getArchivedCatalogs()Z
.end method

.method public abstract getPreferPublic()Z
.end method

.method public abstract loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
.end method

.method public abstract loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
.end method

.method public abstract setArchivedCatalogs(Z)V
.end method

.method public abstract setPreferPublic(Z)V
.end method
