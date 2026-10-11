.class public Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;
.super Lnet/sf/saxon/event/StreamWriterToReceiver;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/BuildingStreamWriter;


# instance fields
.field public p:Lnet/sf/saxon/event/Builder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p2, p0, Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;->p:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p2}, Lnet/sf/saxon/event/Builder;->open()V

    return-void
.end method


# virtual methods
.method public getDocumentNode()Lnet/sf/saxon/s9api/XdmNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;->p:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    iget-object p0, p0, Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;->p:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
