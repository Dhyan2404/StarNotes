.class public Lnet/sf/saxon/om/NodeSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/NodeSource;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/om/NodeSource;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/om/NodeSource;->e:Lnet/sf/saxon/om/NodeInfo;

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NodeSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    invoke-static {p2, p1, v0}, Lnet/sf/saxon/event/Sender;->sendDocumentInfo(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public getNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NodeSource;->e:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/NodeSource;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NodeSource;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/om/NodeSource;->f:Ljava/lang/String;

    return-void
.end method
