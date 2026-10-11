.class public Lnet/sf/saxon/s9api/NullDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/event/Sink;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p0
.end method
