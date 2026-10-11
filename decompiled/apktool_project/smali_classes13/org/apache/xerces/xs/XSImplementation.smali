.class public interface abstract Lorg/apache/xerces/xs/XSImplementation;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createLSInputList([Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xs/LSInputList;
.end method

.method public abstract createStringList([Ljava/lang/String;)Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract createXSLoader(Lorg/apache/xerces/xs/StringList;)Lorg/apache/xerces/xs/XSLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getRecognizedVersions()Lorg/apache/xerces/xs/StringList;
.end method
