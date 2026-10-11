.class public Lnet/sf/saxon/trans/QuitParsingException;
.super Lnet/sf/saxon/trans/XPathException;
.source "SourceFile"


# instance fields
.field private notifiedByConsumer:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const-string v0, "The input file has not been read to completion"

    const-string v1, "SXQP0001"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lnet/sf/saxon/trans/QuitParsingException;->notifiedByConsumer:Z

    return-void
.end method


# virtual methods
.method public isNotifiedByConsumer()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/QuitParsingException;->notifiedByConsumer:Z

    return p0
.end method
