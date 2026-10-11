.class public interface abstract Lcom/sun/org/apache/xerces/internal/xpointer/XPointerPart;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EVENT_ELEMENT_EMPTY:I = 0x2

.field public static final EVENT_ELEMENT_END:I = 0x1

.field public static final EVENT_ELEMENT_START:I


# virtual methods
.method public abstract getSchemeData()Ljava/lang/String;
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method public abstract isChildFragmentResolved()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract isFragmentResolved()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract parseXPointer(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract resolveXPointer(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setSchemeData(Ljava/lang/String;)V
.end method

.method public abstract setSchemeName(Ljava/lang/String;)V
.end method
