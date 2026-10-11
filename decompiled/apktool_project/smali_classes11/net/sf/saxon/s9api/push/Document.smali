.class public interface abstract Lnet/sf/saxon/s9api/push/Document;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/push/Container;


# virtual methods
.method public bridge synthetic comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lnet/sf/saxon/s9api/push/Document;->comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;

    move-result-object p0

    return-object p0
.end method

.method public abstract comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public bridge synthetic processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/s9api/push/Document;->processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;

    move-result-object p0

    return-object p0
.end method

.method public abstract processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public bridge synthetic text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lnet/sf/saxon/s9api/push/Document;->text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;

    move-result-object p0

    return-object p0
.end method

.method public abstract text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method
