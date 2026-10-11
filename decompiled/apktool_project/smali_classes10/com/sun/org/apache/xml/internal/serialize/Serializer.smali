.class public interface abstract Lcom/sun/org/apache/xml/internal/serialize/Serializer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asContentHandler()Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDOMSerializer()Lcom/sun/org/apache/xml/internal/serialize/DOMSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOutputByteStream(Ljava/io/OutputStream;)V
.end method

.method public abstract setOutputCharStream(Ljava/io/Writer;)V
.end method

.method public abstract setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
.end method
