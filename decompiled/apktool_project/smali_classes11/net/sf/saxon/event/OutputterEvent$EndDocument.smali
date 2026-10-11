.class public Lnet/sf/saxon/event/OutputterEvent$EndDocument;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndDocument"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    return-void
.end method
