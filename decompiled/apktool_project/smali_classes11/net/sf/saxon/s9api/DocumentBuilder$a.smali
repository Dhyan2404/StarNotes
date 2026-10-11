.class public Lnet/sf/saxon/s9api/DocumentBuilder$a;
.super Lnet/sf/saxon/event/ReceivingContentHandler;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/BuildingContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/DocumentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final x:Lnet/sf/saxon/event/Builder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object p2, p0, Lnet/sf/saxon/s9api/DocumentBuilder$a;->x:Lnet/sf/saxon/event/Builder;

    return-void
.end method


# virtual methods
.method public getDocumentNode()Lnet/sf/saxon/s9api/XdmNode;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder$a;->x:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0
.end method
