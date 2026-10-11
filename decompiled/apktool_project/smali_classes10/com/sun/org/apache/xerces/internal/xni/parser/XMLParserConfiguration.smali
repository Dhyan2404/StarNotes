.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;


# virtual methods
.method public abstract addRecognizedFeatures([Ljava/lang/String;)V
.end method

.method public abstract addRecognizedProperties([Ljava/lang/String;)V
.end method

.method public abstract getDTDContentModelHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
.end method

.method public abstract getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
.end method

.method public abstract getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
.end method

.method public abstract getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
.end method

.method public abstract getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V
.end method

.method public abstract setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
.end method

.method public abstract setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
.end method

.method public abstract setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
.end method

.method public abstract setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method
