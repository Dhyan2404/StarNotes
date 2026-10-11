.class public Lorg/xmlresolver/catalog/entry/EntryDtddecl;
.super Lorg/xmlresolver/catalog/entry/EntryResource;
.source "SourceFile"


# instance fields
.field public final publicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/xmlresolver/catalog/entry/EntryResource;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/xmlresolver/catalog/entry/EntryDtddecl;->publicId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lorg/xmlresolver/catalog/entry/Entry$Type;
    .locals 0

    sget-object p0, Lorg/xmlresolver/catalog/entry/Entry$Type;->DTD_DECL:Lorg/xmlresolver/catalog/entry/Entry$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dtddecl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryDtddecl;->publicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/xmlresolver/catalog/entry/Entry;->rarr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
