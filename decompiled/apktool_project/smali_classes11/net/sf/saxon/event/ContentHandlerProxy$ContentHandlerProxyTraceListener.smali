.class public Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/TraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/ContentHandlerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentHandlerProxyTraceListener"
.end annotation


# instance fields
.field public e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    return-void
.end method

.method public endCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
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

    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    return-object p0
.end method

.method public open(Lnet/sf/saxon/Controller;)V
    .locals 0

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    return-void
.end method

.method public setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    return-void
.end method

.method public startCurrentItem(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;->e:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
