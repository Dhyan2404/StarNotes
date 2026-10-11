.class public Lnet/sf/saxon/functions/StreamAvailable$a;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/StreamAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method


# virtual methods
.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/QuitParsingException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/QuitParsingException;-><init>(Z)V

    throw p0
.end method
