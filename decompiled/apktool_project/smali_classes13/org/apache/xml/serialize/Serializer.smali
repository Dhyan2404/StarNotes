.class public interface abstract Lorg/apache/xml/serialize/Serializer;
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

.method public abstract asDOMSerializer()Lorg/apache/xml/serialize/DOMSerializer;
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

.method public abstract setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
.end method
