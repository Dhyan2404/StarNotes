.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method
