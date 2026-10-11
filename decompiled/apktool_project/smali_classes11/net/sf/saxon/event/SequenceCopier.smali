.class public Lnet/sf/saxon/event/SequenceCopier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/event/Receiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/xgm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xgm;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
