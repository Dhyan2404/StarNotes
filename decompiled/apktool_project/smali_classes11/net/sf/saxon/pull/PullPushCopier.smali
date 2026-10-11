.class public Lnet/sf/saxon/pull/PullPushCopier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/pull/PullProvider;

.field public final b:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/PullProvider;Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/pull/PullPushCopier;->b:Lnet/sf/saxon/event/Receiver;

    iput-object p1, p0, Lnet/sf/saxon/pull/PullPushCopier;->a:Lnet/sf/saxon/pull/PullProvider;

    return-void
.end method


# virtual methods
.method public append()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/pull/PullPushTee;

    iget-object v1, p0, Lnet/sf/saxon/pull/PullPushCopier;->a:Lnet/sf/saxon/pull/PullProvider;

    iget-object p0, p0, Lnet/sf/saxon/pull/PullPushCopier;->b:Lnet/sf/saxon/event/Receiver;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/pull/PullPushTee;-><init>(Lnet/sf/saxon/pull/PullProvider;Lnet/sf/saxon/event/Receiver;)V

    new-instance p0, Lnet/sf/saxon/pull/PullConsumer;

    invoke-direct {p0, v0}, Lnet/sf/saxon/pull/PullConsumer;-><init>(Lnet/sf/saxon/pull/PullProvider;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullConsumer;->consume()V

    return-void
.end method

.method public copy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pull/PullPushCopier;->b:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    new-instance v0, Lnet/sf/saxon/pull/PullPushTee;

    iget-object v1, p0, Lnet/sf/saxon/pull/PullPushCopier;->a:Lnet/sf/saxon/pull/PullProvider;

    iget-object v2, p0, Lnet/sf/saxon/pull/PullPushCopier;->b:Lnet/sf/saxon/event/Receiver;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/pull/PullPushTee;-><init>(Lnet/sf/saxon/pull/PullProvider;Lnet/sf/saxon/event/Receiver;)V

    new-instance v1, Lnet/sf/saxon/pull/PullConsumer;

    invoke-direct {v1, v0}, Lnet/sf/saxon/pull/PullConsumer;-><init>(Lnet/sf/saxon/pull/PullProvider;)V

    invoke-virtual {v1}, Lnet/sf/saxon/pull/PullConsumer;->consume()V

    iget-object p0, p0, Lnet/sf/saxon/pull/PullPushCopier;->b:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method
