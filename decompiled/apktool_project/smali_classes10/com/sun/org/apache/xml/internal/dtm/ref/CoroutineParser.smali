.class public interface abstract Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineParser;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract doMore(ZI)Ljava/lang/Object;
.end method

.method public abstract doParse(Lorg/xml/sax/InputSource;I)Ljava/lang/Object;
.end method

.method public abstract doTerminate(I)V
.end method

.method public abstract getCoroutineManager()Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineManager;
.end method

.method public abstract getParserCoroutineID()I
.end method

.method public abstract init(Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineManager;ILorg/xml/sax/XMLReader;)V
.end method

.method public abstract setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V
.end method
