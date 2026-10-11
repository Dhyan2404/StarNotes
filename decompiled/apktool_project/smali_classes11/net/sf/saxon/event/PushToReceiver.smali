.class public Lnet/sf/saxon/event/PushToReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/push/Push;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/PushToReceiver$c;,
        Lnet/sf/saxon/event/PushToReceiver$b;,
        Lnet/sf/saxon/event/PushToReceiver$a;
    }
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public final b:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    new-instance v1, Lnet/sf/saxon/event/RegularSequenceChecker;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;-><init>(Lnet/sf/saxon/event/Receiver;Z)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object v0, p0, Lnet/sf/saxon/event/PushToReceiver;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver;->b:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public document(Z)Lnet/sf/saxon/s9api/push/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/PushToReceiver;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lnet/sf/saxon/event/PushToReceiver$b;

    iget-object v1, p0, Lnet/sf/saxon/event/PushToReceiver;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p0, v1, p1}, Lnet/sf/saxon/event/PushToReceiver$b;-><init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Z)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
