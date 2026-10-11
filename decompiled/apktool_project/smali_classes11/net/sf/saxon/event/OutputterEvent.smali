.class public abstract Lnet/sf/saxon/event/OutputterEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/OutputterEvent$Append;,
        Lnet/sf/saxon/event/OutputterEvent$ProcessingInstruction;,
        Lnet/sf/saxon/event/OutputterEvent$Comment;,
        Lnet/sf/saxon/event/OutputterEvent$Text;,
        Lnet/sf/saxon/event/OutputterEvent$EndElement;,
        Lnet/sf/saxon/event/OutputterEvent$StartContent;,
        Lnet/sf/saxon/event/OutputterEvent$Namespace;,
        Lnet/sf/saxon/event/OutputterEvent$Attribute;,
        Lnet/sf/saxon/event/OutputterEvent$StartElement;,
        Lnet/sf/saxon/event/OutputterEvent$EndDocument;,
        Lnet/sf/saxon/event/OutputterEvent$StartDocument;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method
