.class public interface abstract Lorg/xmlresolver/ResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getConfiguration()Lorg/xmlresolver/ResolverConfiguration;
.end method

.method public abstract resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
.end method

.method public abstract resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
.end method

.method public abstract resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
.end method
