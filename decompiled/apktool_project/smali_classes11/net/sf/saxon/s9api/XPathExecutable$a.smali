.class public Lnet/sf/saxon/s9api/XPathExecutable$a;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/XPathExecutable;->asStep()Lnet/sf/saxon/s9api/streams/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XPathExecutable;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XPathExecutable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathExecutable$a;->e:Lnet/sf/saxon/s9api/XPathExecutable;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable$a;->e:Lnet/sf/saxon/s9api/XPathExecutable;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathExecutable;->load()Lnet/sf/saxon/s9api/XPathSelector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathSelector;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XPathSelector;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XPathExecutable$a;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
