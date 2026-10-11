.class public interface abstract Lorg/apache/xmlbeans/SchemaCodePrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract printHolder(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/repackage/Repackager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method
