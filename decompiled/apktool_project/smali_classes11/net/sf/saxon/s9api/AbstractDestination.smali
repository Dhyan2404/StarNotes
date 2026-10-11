.class public abstract Lnet/sf/saxon/s9api/AbstractDestination;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Destination;


# instance fields
.field public e:Ljava/net/URI;

.field protected helper:Lnet/sf/saxon/s9api/DestinationHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/DestinationHelper;-><init>(Lnet/sf/saxon/s9api/Destination;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    return-void
.end method


# virtual methods
.method public closeAndNotify()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/DestinationHelper;->closeAndNotify()V

    return-void
.end method

.method public getDestinationBaseURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->e:Ljava/net/URI;

    return-object p0
.end method

.method public final onClose(Lnet/sf/saxon/s9api/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/DestinationHelper;->onClose(Lnet/sf/saxon/s9api/Action;)V

    return-void
.end method

.method public setDestinationBaseURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/AbstractDestination;->e:Ljava/net/URI;

    return-void
.end method
