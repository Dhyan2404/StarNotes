.class public Lnet/sf/saxon/pull/PullSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# instance fields
.field public e:Ljava/lang/String;

.field public final f:Lnet/sf/saxon/pull/PullProvider;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/PullProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/PullSource;->f:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p1}, Lnet/sf/saxon/pull/PullProvider;->getSourceLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/pull/PullProvider;->getSourceLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pull/PullSource;->e:Ljava/lang/String;

    :cond_0
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

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAware()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lnet/sf/saxon/event/Sender;->makeValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullSource;->getPullProvider()Lnet/sf/saxon/pull/PullProvider;

    move-result-object p0

    invoke-interface {p0, v0}, Lnet/sf/saxon/pull/PullProvider;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {p1, v0}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v0, Lnet/sf/saxon/pull/PullPushCopier;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/pull/PullPushCopier;-><init>(Lnet/sf/saxon/pull/PullProvider;Lnet/sf/saxon/event/Receiver;)V

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/pull/PullPushCopier;->copy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->close()V

    :cond_1
    throw p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "XInclude processing is not supported with a pull parser"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPullProvider()Lnet/sf/saxon/pull/PullProvider;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullSource;->f:Lnet/sf/saxon/pull/PullProvider;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullSource;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/PullSource;->e:Ljava/lang/String;

    return-void
.end method
