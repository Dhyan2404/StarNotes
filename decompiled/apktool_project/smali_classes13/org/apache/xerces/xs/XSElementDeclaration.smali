.class public interface abstract Lorg/apache/xerces/xs/XSElementDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSTerm;


# virtual methods
.method public abstract getAbstract()Z
.end method

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

.method public abstract getDisallowedSubstitutions()S
.end method

.method public abstract getEnclosingCTDefinition()Lorg/apache/xerces/xs/XSComplexTypeDefinition;
.end method

.method public abstract getIdentityConstraints()Lorg/apache/xerces/xs/XSNamedMap;
.end method

.method public abstract getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getNillable()Z
.end method

.method public abstract getScope()S
.end method

.method public abstract getSubstitutionGroupAffiliation()Lorg/apache/xerces/xs/XSElementDeclaration;
.end method

.method public abstract getSubstitutionGroupExclusions()S
.end method

.method public abstract getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
.end method

.method public abstract getValueConstraintValue()Lorg/apache/xerces/xs/XSValue;
.end method

.method public abstract isDisallowedSubstitution(S)Z
.end method

.method public abstract isSubstitutionGroupExclusion(S)Z
.end method
