.class public interface abstract Lorg/apache/xerces/xs/XSComplexTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSTypeDefinition;


# static fields
.field public static final CONTENTTYPE_ELEMENT:S = 0x2s

.field public static final CONTENTTYPE_EMPTY:S = 0x0s

.field public static final CONTENTTYPE_MIXED:S = 0x3s

.field public static final CONTENTTYPE_SIMPLE:S = 0x1s


# virtual methods
.method public abstract getAbstract()Z
.end method

.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getAttributeWildcard()Lorg/apache/xerces/xs/XSWildcard;
.end method

.method public abstract getContentType()S
.end method

.method public abstract getDerivationMethod()S
.end method

.method public abstract getParticle()Lorg/apache/xerces/xs/XSParticle;
.end method

.method public abstract getProhibitedSubstitutions()S
.end method

.method public abstract getSimpleType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract isProhibitedSubstitution(S)Z
.end method
