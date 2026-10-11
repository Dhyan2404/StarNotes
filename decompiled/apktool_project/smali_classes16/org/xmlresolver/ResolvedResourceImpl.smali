.class public Lorg/xmlresolver/ResolvedResourceImpl;
.super Lorg/xmlresolver/ResolvedResource;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Ljava/net/URI;

.field public final c:Ljava/io/InputStream;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/ResolvedResource;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/ResolvedResourceImpl;->a:Ljava/net/URI;

    iput-object p2, p0, Lorg/xmlresolver/ResolvedResourceImpl;->b:Ljava/net/URI;

    iput-object p3, p0, Lorg/xmlresolver/ResolvedResourceImpl;->c:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/xmlresolver/ResolvedResourceImpl;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResolvedResourceImpl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResolvedResourceImpl;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public getLocalURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResolvedResourceImpl;->b:Ljava/net/URI;

    return-object p0
.end method

.method public getResolvedURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResolvedResourceImpl;->a:Ljava/net/URI;

    return-object p0
.end method
