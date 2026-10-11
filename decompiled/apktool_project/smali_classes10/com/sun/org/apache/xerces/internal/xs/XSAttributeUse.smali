.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSObject;


# virtual methods
.method public abstract getActualVC()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualVCType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getAttrDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getConstraintValue()Ljava/lang/String;
.end method

.method public abstract getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getRequired()Z
.end method
