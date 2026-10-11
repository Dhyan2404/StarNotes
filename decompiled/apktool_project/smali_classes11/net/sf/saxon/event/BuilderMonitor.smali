.class public abstract Lnet/sf/saxon/event/BuilderMonitor;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method


# virtual methods
.method public abstract getMarkedNode()Lnet/sf/saxon/om/NodeInfo;
.end method

.method public abstract markNextNode(I)V
.end method
