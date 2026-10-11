package net.p110sf.saxon.type;

import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashSet;

/* loaded from: classes11.dex */
public interface ComplexType extends SchemaType {
    boolean allowsAttributes() throws MissingComponentException;

    boolean containsElementWildcard() throws MissingComponentException;

    void gatherAllPermittedChildren(IntHashSet intHashSet, boolean z) throws SchemaException;

    void gatherAllPermittedDescendants(IntHashSet intHashSet) throws SchemaException;

    int getAttributeUseCardinality(StructuredQName structuredQName) throws SchemaException;

    SimpleType getAttributeUseType(StructuredQName structuredQName) throws SchemaException;

    int getDescendantElementCardinality(int i) throws SchemaException;

    SchemaType getDescendantElementType(int i) throws SchemaException;

    int getElementParticleCardinality(int i, boolean z) throws MissingComponentException;

    SchemaType getElementParticleType(int i, boolean z) throws MissingComponentException;

    SimpleType getSimpleContentType() throws MissingComponentException;

    ComplexVariety getVariety();

    boolean hasAssertions();

    boolean isAbstract();

    boolean isAllContent();

    boolean isComplexContent();

    boolean isEmptiable() throws SchemaException;

    boolean isEmptyContent();

    boolean isMixedContent();

    boolean isRestricted();

    boolean isSimpleContent();
}
