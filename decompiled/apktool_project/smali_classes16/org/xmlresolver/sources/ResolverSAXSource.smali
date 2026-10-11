.class public Lorg/xmlresolver/sources/ResolverSAXSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "SourceFile"


# instance fields
.field public final resolvedURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/xml/sax/InputSource;)V
    .locals 0

    invoke-direct {p0, p2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    iput-object p1, p0, Lorg/xmlresolver/sources/ResolverSAXSource;->resolvedURI:Ljava/net/URI;

    return-void
.end method
