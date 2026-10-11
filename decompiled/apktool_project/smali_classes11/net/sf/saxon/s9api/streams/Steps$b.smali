.class public final Lnet/sf/saxon/s9api/streams/Steps$b;
.super Lnet/sf/saxon/s9api/streams/Step;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/streams/Steps;->atomize()Lnet/sf/saxon/s9api/streams/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/s9api/streams/Step<",
        "Lnet/sf/saxon/s9api/XdmAtomicValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/Step;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "+",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getTypedValue()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    instance-of p0, p1, Lnet/sf/saxon/s9api/XdmArray;

    if-eqz p0, :cond_2

    :try_start_1
    check-cast p1, Lnet/sf/saxon/s9api/XdmArray;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmArray;->getUnderlyingValue()Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/AtomicSequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->stream()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "Cannot atomize supplied value"

    invoke-direct {p1, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/Steps$b;->a(Lnet/sf/saxon/s9api/XdmItem;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
