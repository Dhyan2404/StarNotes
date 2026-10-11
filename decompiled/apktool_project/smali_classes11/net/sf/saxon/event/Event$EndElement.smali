.class public Lnet/sf/saxon/event/Event$EndElement;
.super Lnet/sf/saxon/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/Event;-><init>()V

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Receiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method
