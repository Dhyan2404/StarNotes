.class public Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;
.super Lorg/xmlresolver/catalog/entry/Entry;
.source "SourceFile"


# instance fields
.field public final rewritePrefix:Ljava/net/URI;

.field public final systemIdStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/Entry;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;)V

    const-string p1, "classpath:/"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "classpath:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xb

    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->systemIdStart:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->systemIdStart:Ljava/lang/String;

    :goto_0
    invoke-static {p2, p5}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->rewritePrefix:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getType()Lorg/xmlresolver/catalog/entry/Entry$Type;
    .locals 0

    sget-object p0, Lorg/xmlresolver/catalog/entry/Entry$Type;->REWRITE_SYSTEM:Lorg/xmlresolver/catalog/entry/Entry$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewriteSystem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->systemIdStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/xmlresolver/catalog/entry/Entry;->rarr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->rewritePrefix:Ljava/net/URI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
