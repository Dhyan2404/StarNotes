.class public Lnet/sf/saxon/pull/PullConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/pull/PullProvider;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/PullProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/PullConsumer;->a:Lnet/sf/saxon/pull/PullProvider;

    return-void
.end method


# virtual methods
.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/pull/PullConsumer;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/pull/PullEvent;->END_OF_INPUT:Lnet/sf/saxon/pull/PullEvent;

    if-ne v0, v1, :cond_0

    return-void
.end method
