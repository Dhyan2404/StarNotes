.class public interface abstract Lnet/sf/saxon/s9api/push/Container;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract setDefaultNamespace(Ljava/lang/String;)V
.end method

.method public abstract text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method
