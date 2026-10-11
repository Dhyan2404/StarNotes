.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OCCURS_ONE_OR_MORE:S = 0x4s

.field public static final OCCURS_ZERO_OR_MORE:S = 0x3s

.field public static final OCCURS_ZERO_OR_ONE:S = 0x2s

.field public static final SEPARATOR_CHOICE:S = 0x0s

.field public static final SEPARATOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract any(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract element(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract empty(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endContentModel(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract getDTDContentModelSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;
.end method

.method public abstract occurrence(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract pcdata(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract separator(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setDTDContentModelSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDContentModelSource;)V
.end method

.method public abstract startContentModel(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startGroup(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation
.end method
