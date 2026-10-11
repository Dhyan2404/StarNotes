.class public Lnet/sf/saxon/tree/iter/UnparsedTextIterator;
.super Lnet/sf/saxon/tree/iter/TextLinesIterator;
.source "SourceFile"


# instance fields
.field public h:Lnet/sf/saxon/expr/XPathContext;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->i:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->reader:Ljava/io/LineNumberReader;

    .line 14
    iput-object p2, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->uri:Ljava/net/URI;

    .line 15
    iput-object p3, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->h:Lnet/sf/saxon/expr/XPathContext;

    .line 16
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->checker:Lnet/sf/saxon/z/IntPredicateProxy;

    .line 17
    iput-object p4, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->i:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->location:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/TextLinesIterator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->i:Ljava/lang/String;

    .line 3
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 4
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object v1

    invoke-interface {v1, p1, p3, v0}, Lnet/sf/saxon/lib/UnparsedTextURIResolver;->resolve(Ljava/net/URI;Ljava/lang/String;Lnet/sf/saxon/Configuration;)Ljava/io/Reader;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->reader:Ljava/io/LineNumberReader;

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->uri:Ljava/net/URI;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->h:Lnet/sf/saxon/expr/XPathContext;

    .line 8
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->checker:Lnet/sf/saxon/z/IntPredicateProxy;

    .line 9
    iput-object p3, p0, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;->i:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lnet/sf/saxon/tree/iter/TextLinesIterator;->location:Lnet/sf/saxon/s9api/Location;

    return-void
.end method
