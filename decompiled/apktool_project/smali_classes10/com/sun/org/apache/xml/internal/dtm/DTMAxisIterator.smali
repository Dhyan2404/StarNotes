.class public interface abstract Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final END:I = -0x1


# virtual methods
.method public abstract cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract getLast()I
.end method

.method public abstract getNodeByPosition(I)I
.end method

.method public abstract getPosition()I
.end method

.method public abstract getStartNode()I
.end method

.method public abstract gotoMark()V
.end method

.method public abstract isReverse()Z
.end method

.method public abstract next()I
.end method

.method public abstract reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method

.method public abstract setMark()V
.end method

.method public abstract setRestartable(Z)V
.end method

.method public abstract setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end method
