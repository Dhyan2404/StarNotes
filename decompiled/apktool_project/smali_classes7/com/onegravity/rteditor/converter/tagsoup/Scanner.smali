.class public interface abstract Lcom/onegravity/rteditor/converter/tagsoup/Scanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract scan(Ljava/io/Reader;Lcom/onegravity/rteditor/converter/tagsoup/ScanHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startCDATA()V
.end method
