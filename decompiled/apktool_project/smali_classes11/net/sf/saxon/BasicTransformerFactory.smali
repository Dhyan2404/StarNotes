.class public Lnet/sf/saxon/BasicTransformerFactory;
.super Lnet/sf/saxon/TransformerFactoryImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/TransformerFactoryImpl;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    .line 4
    invoke-virtual {p0, v0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lnet/sf/saxon/TransformerFactoryImpl;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method
