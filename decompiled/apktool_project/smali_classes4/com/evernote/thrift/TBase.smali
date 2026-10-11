.class public interface abstract Lcom/evernote/thrift/TBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/evernote/thrift/TBase;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract deepCopy()Lcom/evernote/thrift/TBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/evernote/thrift/TBase<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation
.end method
