.class Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/serialize/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializerWrapper"
.end annotation


# instance fields
.field private m_old_DOMSerializer:Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;

.field private final m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/Serializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    return-void
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p0

    return-object p0
.end method

.method public asDOMSerializer()Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_old_DOMSerializer:Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;-><init>(Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_old_DOMSerializer:Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_old_DOMSerializer:Lcom/sun/org/apache/xalan/internal/serialize/DOMSerializer;

    return-object p0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public reset()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->reset()Z

    move-result p0

    return p0
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    return-void
.end method
