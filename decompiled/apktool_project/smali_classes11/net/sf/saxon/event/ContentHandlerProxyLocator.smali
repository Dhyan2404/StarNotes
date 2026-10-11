.class public Lnet/sf/saxon/event/ContentHandlerProxyLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Locator;


# instance fields
.field public e:Lnet/sf/saxon/event/ContentHandlerProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/ContentHandlerProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;->e:Lnet/sf/saxon/event/ContentHandlerProxy;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;->e:Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getCurrentLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getContextItemStack()Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;->e:Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getTraceListener()Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->getContextItemStack()Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;->e:Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getCurrentLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxyLocator;->e:Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getCurrentLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
