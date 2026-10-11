.class public Lnet/sf/saxon/event/PushToReceiver$b;
.super Lnet/sf/saxon/event/PushToReceiver$a;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/push/Document;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/PushToReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final f:Z

.field public g:Z

.field public final synthetic h:Lnet/sf/saxon/event/PushToReceiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$b;->h:Lnet/sf/saxon/event/PushToReceiver;

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/saxon/event/PushToReceiver$a;-><init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    :try_start_0
    iput-boolean p3, p0, Lnet/sf/saxon/event/PushToReceiver$b;->f:Z

    invoke-virtual {p2, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$b;->comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;

    move-result-object p0

    return-object p0
.end method

.method public comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/push/Document;

    return-object p0
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "A well-formed document must contain an element node"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(Ljava/lang/CharSequence;)Lnet/sf/saxon/event/PushToReceiver$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "A well-formed document cannot contain text outside any element"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/event/PushToReceiver$b;

    return-object p0
.end method

.method public element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "A well-formed document cannot have more than one element child"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    .line 8
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "A well-formed document cannot have more than one element child"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$b;->g:Z

    .line 4
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/PushToReceiver$b;->processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;

    move-result-object p0

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/event/PushToReceiver$a;->processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/push/Document;

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$b;->e(Ljava/lang/CharSequence;)Lnet/sf/saxon/event/PushToReceiver$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$b;->e(Ljava/lang/CharSequence;)Lnet/sf/saxon/event/PushToReceiver$b;

    move-result-object p0

    return-object p0
.end method
