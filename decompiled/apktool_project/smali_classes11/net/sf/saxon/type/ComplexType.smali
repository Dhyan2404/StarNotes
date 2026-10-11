.class public interface abstract Lnet/sf/saxon/type/ComplexType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SchemaType;


# virtual methods
.method public abstract allowsAttributes()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract containsElementWildcard()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract gatherAllPermittedChildren(Lnet/sf/saxon/z/IntHashSet;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract gatherAllPermittedDescendants(Lnet/sf/saxon/z/IntHashSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getAttributeUseCardinality(Lnet/sf/saxon/om/StructuredQName;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getAttributeUseType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SimpleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getDescendantElementCardinality(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getDescendantElementType(I)Lnet/sf/saxon/type/SchemaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract getElementParticleCardinality(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract getElementParticleType(IZ)Lnet/sf/saxon/type/SchemaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract getSimpleContentType()Lnet/sf/saxon/type/SimpleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract getVariety()Lnet/sf/saxon/type/ComplexVariety;
.end method

.method public abstract hasAssertions()Z
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isAllContent()Z
.end method

.method public abstract isComplexContent()Z
.end method

.method public abstract isEmptiable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation
.end method

.method public abstract isEmptyContent()Z
.end method

.method public abstract isMixedContent()Z
.end method

.method public abstract isRestricted()Z
.end method

.method public abstract isSimpleContent()Z
.end method
