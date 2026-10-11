.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;


# static fields
.field public static final CONTENTTYPE_ELEMENT:S = 0x2s

.field public static final CONTENTTYPE_EMPTY:S = 0x0s

.field public static final CONTENTTYPE_MIXED:S = 0x3s

.field public static final CONTENTTYPE_SIMPLE:S = 0x1s


# virtual methods
.method public abstract getAbstract()Z
.end method

.method public abstract getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
.end method

.method public abstract getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
.end method

.method public abstract getAttributeWildcard()Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;
.end method

.method public abstract getContentType()S
.end method

.method public abstract getDerivationMethod()S
.end method

.method public abstract getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;
.end method

.method public abstract getProhibitedSubstitutions()S
.end method

.method public abstract getSimpleType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
.end method

.method public abstract isProhibitedSubstitution(S)Z
.end method
