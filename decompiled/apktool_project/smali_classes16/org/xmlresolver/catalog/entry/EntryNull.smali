.class public Lorg/xmlresolver/catalog/entry/EntryNull;
.super Lorg/xmlresolver/catalog/entry/Entry;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 2

    const-string v0, "http://xmlresolver.org/irrelevant"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/xmlresolver/catalog/entry/Entry;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Lorg/xmlresolver/catalog/entry/Entry$Type;
    .locals 0

    sget-object p0, Lorg/xmlresolver/catalog/entry/Entry$Type;->NULL:Lorg/xmlresolver/catalog/entry/Entry$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "null entry (not a catalog element)"

    return-object p0
.end method
