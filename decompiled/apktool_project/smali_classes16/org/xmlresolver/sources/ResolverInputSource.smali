.class public Lorg/xmlresolver/sources/ResolverInputSource;
.super Lorg/xml/sax/InputSource;
.source "SourceFile"


# instance fields
.field public final resolvedURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/xmlresolver/sources/ResolverInputSource;->resolvedURI:Ljava/net/URI;

    return-void
.end method
