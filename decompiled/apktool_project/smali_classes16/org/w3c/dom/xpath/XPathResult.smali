.class public interface abstract Lorg/w3c/dom/xpath/XPathResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY_TYPE:S = 0x0s

.field public static final ANY_UNORDERED_NODE_TYPE:S = 0x8s

.field public static final BOOLEAN_TYPE:S = 0x3s

.field public static final FIRST_ORDERED_NODE_TYPE:S = 0x9s

.field public static final NUMBER_TYPE:S = 0x1s

.field public static final ORDERED_NODE_ITERATOR_TYPE:S = 0x5s

.field public static final ORDERED_NODE_SNAPSHOT_TYPE:S = 0x7s

.field public static final STRING_TYPE:S = 0x2s

.field public static final UNORDERED_NODE_ITERATOR_TYPE:S = 0x4s

.field public static final UNORDERED_NODE_SNAPSHOT_TYPE:S = 0x6s


# virtual methods
.method public abstract getBooleanValue()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract getInvalidIteratorState()Z
.end method

.method public abstract getNumberValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract getResultType()S
.end method

.method public abstract getSingleNodeValue()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract getSnapshotLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract getStringValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method

.method public abstract iterateNext()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract snapshotItem(I)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation
.end method
