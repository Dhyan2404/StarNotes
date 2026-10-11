.class public abstract Lnet/sf/saxon/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/Event$Append;,
        Lnet/sf/saxon/event/Event$ProcessingInstruction;,
        Lnet/sf/saxon/event/Event$Comment;,
        Lnet/sf/saxon/event/Event$Text;,
        Lnet/sf/saxon/event/Event$EndElement;,
        Lnet/sf/saxon/event/Event$StartElement;,
        Lnet/sf/saxon/event/Event$EndDocument;,
        Lnet/sf/saxon/event/Event$StartDocument;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method
