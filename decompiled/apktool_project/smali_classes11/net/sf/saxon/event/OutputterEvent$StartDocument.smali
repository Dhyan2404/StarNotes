.class public Lnet/sf/saxon/event/OutputterEvent$StartDocument;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
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

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    iput p1, p0, Lnet/sf/saxon/event/OutputterEvent$StartDocument;->a:I

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

    iget p0, p0, Lnet/sf/saxon/event/OutputterEvent$StartDocument;->a:I

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    return-void
.end method
