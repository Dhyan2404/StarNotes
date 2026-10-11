.class public interface abstract Lorg/xmlresolver/ResolverConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getFeatures()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/xmlresolver/ResolverFeature<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlresolver/ResolverFeature<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
