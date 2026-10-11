.class public interface abstract Lcom/evernote/thrift/TReflectionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/evernote/thrift/TBase;",
        "F::",
        "Lcom/evernote/thrift/TFieldIdEnum;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract fieldForId(I)Lcom/evernote/thrift/TFieldIdEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation
.end method

.method public abstract getFieldValue(Lcom/evernote/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract isSet(Lcom/evernote/thrift/TFieldIdEnum;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation
.end method

.method public abstract setFieldValue(Lcom/evernote/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
