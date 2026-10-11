.class public interface abstract Lorg/apache/xerces/xs/ShortList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# virtual methods
.method public abstract contains(S)Z
.end method

.method public abstract getLength()I
.end method

.method public abstract item(I)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method
