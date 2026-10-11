.class public interface abstract Lcom/sun/org/apache/xalan/internal/xsltc/Translet;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAuxiliaryClass(Ljava/lang/Class;)V
.end method

.method public abstract addParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract buildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract getAuxiliaryClass(Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract getNamesArray()[Ljava/lang/String;
.end method

.method public abstract getNamespaceArray()[Ljava/lang/String;
.end method

.method public abstract getTypesArray()[I
.end method

.method public abstract getUrisArray()[Ljava/lang/String;
.end method

.method public abstract transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public abstract transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method
