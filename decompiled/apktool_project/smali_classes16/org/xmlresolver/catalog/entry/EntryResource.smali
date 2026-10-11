.class public abstract Lorg/xmlresolver/catalog/entry/EntryResource;
.super Lorg/xmlresolver/catalog/entry/Entry;
.source "SourceFile"


# instance fields
.field public final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/Entry;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    return-void
.end method
