.class public interface abstract Lnet/sf/saxon/s9api/BuildingStreamWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# virtual methods
.method public abstract getDocumentNode()Lnet/sf/saxon/s9api/XdmNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract isCheckValues()Z
.end method

.method public abstract setCheckValues(Z)V
.end method
