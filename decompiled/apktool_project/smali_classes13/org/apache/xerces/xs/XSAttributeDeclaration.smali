.class public interface abstract Lorg/apache/xerces/xs/XSAttributeDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSObject;


# virtual methods
.method public abstract getActualVC()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getActualVCType()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
.end method

.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getConstraintValue()Ljava/lang/String;
.end method

.method public abstract getEnclosingCTDefinition()Lorg/apache/xerces/xs/XSComplexTypeDefinition;
.end method

.method public abstract getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getScope()S
.end method

.method public abstract getTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getValueConstraintValue()Lorg/apache/xerces/xs/XSValue;
.end method
