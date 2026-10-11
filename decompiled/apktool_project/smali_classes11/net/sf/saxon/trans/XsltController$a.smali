.class public Lnet/sf/saxon/trans/XsltController$a;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/trans/XsltController;->getStreamingReceiver(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/event/Outputter;

.field public final synthetic f:Lnet/sf/saxon/trans/XsltController;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/XsltController$a;->f:Lnet/sf/saxon/trans/XsltController;

    iput-object p3, p0, Lnet/sf/saxon/trans/XsltController$a;->e:Lnet/sf/saxon/event/Outputter;

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController$a;->f:Lnet/sf/saxon/trans/XsltController;

    invoke-static {v0}, Lnet/sf/saxon/trans/XsltController;->g(Lnet/sf/saxon/trans/XsltController;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController$a;->f:Lnet/sf/saxon/trans/XsltController;

    invoke-static {v0}, Lnet/sf/saxon/trans/XsltController;->h(Lnet/sf/saxon/trans/XsltController;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/lib/TraceListener;->close()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/XsltController$a;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Outputter;->close()V

    iget-object p0, p0, Lnet/sf/saxon/trans/XsltController$a;->f:Lnet/sf/saxon/trans/XsltController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/sf/saxon/trans/XsltController;->i(Lnet/sf/saxon/trans/XsltController;Z)Z

    return-void
.end method
