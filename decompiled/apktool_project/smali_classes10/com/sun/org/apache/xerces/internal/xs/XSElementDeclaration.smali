.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSTerm;


# virtual methods
.method public abstract getAbstract()Z
.end method

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

.method public abstract getAnnotation()Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;
.end method

.method public abstract getConstraintType()S
.end method

.method public abstract getConstraintValue()Ljava/lang/String;
.end method

.method public abstract getDisallowedSubstitutions()S
.end method

.method public abstract getEnclosingCTDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;
.end method

.method public abstract getIdentityConstraints()Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;
.end method

.method public abstract getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation
.end method

.method public abstract getNillable()Z
.end method

.method public abstract getScope()S
.end method

.method public abstract getSubstitutionGroupAffiliation()Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
.end method

.method public abstract getSubstitutionGroupExclusions()S
.end method

.method public abstract getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
.end method

.method public abstract isDisallowedSubstitution(S)Z
.end method

.method public abstract isSubstitutionGroupExclusion(S)Z
.end method
