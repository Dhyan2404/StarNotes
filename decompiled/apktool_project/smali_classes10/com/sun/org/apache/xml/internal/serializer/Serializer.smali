.class public interface abstract Lcom/sun/org/apache/xml/internal/serializer/Serializer;
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

.method public abstract asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputFormat()Ljava/util/Properties;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getWriter()Ljava/io/Writer;
.end method

.method public abstract reset()Z
.end method

.method public abstract setOutputFormat(Ljava/util/Properties;)V
.end method

.method public abstract setOutputStream(Ljava/io/OutputStream;)V
.end method

.method public abstract setWriter(Ljava/io/Writer;)V
.end method
