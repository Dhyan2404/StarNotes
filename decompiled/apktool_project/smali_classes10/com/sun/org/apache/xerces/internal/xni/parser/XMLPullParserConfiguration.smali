.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/parser/XMLPullParserConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract parse(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
