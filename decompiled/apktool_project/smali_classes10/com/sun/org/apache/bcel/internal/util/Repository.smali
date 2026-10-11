.class public interface abstract Lcom/sun/org/apache/bcel/internal/util/Repository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract findClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
.end method

.method public abstract loadClass(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract loadClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract removeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
.end method

.method public abstract storeClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
.end method
