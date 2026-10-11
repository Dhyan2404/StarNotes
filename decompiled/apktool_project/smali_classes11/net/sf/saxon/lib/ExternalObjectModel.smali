.class public interface abstract Lnet/sf/saxon/lib/ExternalObjectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getActiveSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ActiveSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getDocumentBuilder(Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/Receiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getDocumentClassName()Ljava/lang/String;
.end method

.method public abstract getIdentifyingURI()Ljava/lang/String;
.end method

.method public abstract getJPConverter(Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;
.end method

.method public abstract getNodeListCreator(Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;
.end method

.method public abstract getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/expr/PJConverter;"
        }
    .end annotation
.end method

.method public abstract unravel(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
.end method
