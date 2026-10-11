.class public Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;
.super Lnet/sf/saxon/event/SequenceNormalizer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceNormalizer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/SequenceReceiver;->decompose(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getErrorCodeForDecomposingFunctionItems()Ljava/lang/String;
    .locals 0

    const-string p0, "SENR0001"

    return-object p0
.end method
