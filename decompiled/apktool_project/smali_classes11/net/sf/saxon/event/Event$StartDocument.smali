.class public Lnet/sf/saxon/event/Event$StartDocument;
.super Lnet/sf/saxon/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartDocument"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/Event;-><init>()V

    iput p1, p0, Lnet/sf/saxon/event/Event$StartDocument;->a:I

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

    iget p0, p0, Lnet/sf/saxon/event/Event$StartDocument;->a:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    return-void
.end method
