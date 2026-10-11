.class public Lnet/sf/saxon/s9api/DestinationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/Destination;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Destination;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/DestinationHelper;->b:Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/s9api/DestinationHelper;->a:Lnet/sf/saxon/s9api/Destination;

    return-void
.end method


# virtual methods
.method public closeAndNotify()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/DestinationHelper;->a:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Destination;->close()V

    iget-object p0, p0, Lnet/sf/saxon/s9api/DestinationHelper;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/Action;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Action;->act()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/DestinationHelper;->b:Ljava/util/List;

    return-object p0
.end method

.method public final onClose(Lnet/sf/saxon/s9api/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DestinationHelper;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
