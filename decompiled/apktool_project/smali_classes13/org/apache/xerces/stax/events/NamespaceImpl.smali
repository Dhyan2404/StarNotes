.class public final Lorg/apache/xerces/stax/events/NamespaceImpl;
.super Lorg/apache/xerces/stax/events/AttributeImpl;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/Namespace;


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 7

    const/16 v1, 0xd

    invoke-static {p1}, Lorg/apache/xerces/stax/events/NamespaceImpl;->a(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/apache/xerces/stax/events/NamespaceImpl;->k:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/stax/events/NamespaceImpl;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 4

    const-string v0, ""

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2000/xmlns/"

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, v2, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v2, v1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NamespaceImpl;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NamespaceImpl;->k:Ljava/lang/String;

    return-object p0
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/stax/events/NamespaceImpl;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
