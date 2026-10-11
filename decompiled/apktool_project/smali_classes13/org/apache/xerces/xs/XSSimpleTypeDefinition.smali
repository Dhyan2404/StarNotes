.class public interface abstract Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSTypeDefinition;


# static fields
.field public static final FACET_ENUMERATION:S = 0x800s

.field public static final FACET_FRACTIONDIGITS:S = 0x400s

.field public static final FACET_LENGTH:S = 0x1s

.field public static final FACET_MAXEXCLUSIVE:S = 0x40s

.field public static final FACET_MAXINCLUSIVE:S = 0x20s

.field public static final FACET_MAXLENGTH:S = 0x4s

.field public static final FACET_MINEXCLUSIVE:S = 0x80s

.field public static final FACET_MININCLUSIVE:S = 0x100s

.field public static final FACET_MINLENGTH:S = 0x2s

.field public static final FACET_NONE:S = 0x0s

.field public static final FACET_PATTERN:S = 0x8s

.field public static final FACET_TOTALDIGITS:S = 0x200s

.field public static final FACET_WHITESPACE:S = 0x10s

.field public static final ORDERED_FALSE:S = 0x0s

.field public static final ORDERED_PARTIAL:S = 0x1s

.field public static final ORDERED_TOTAL:S = 0x2s

.field public static final VARIETY_ABSENT:S = 0x0s

.field public static final VARIETY_ATOMIC:S = 0x1s

.field public static final VARIETY_LIST:S = 0x2s

.field public static final VARIETY_UNION:S = 0x3s


# virtual methods
.method public abstract getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getBounded()Z
.end method

.method public abstract getBuiltInKind()S
.end method

.method public abstract getDefinedFacets()S
.end method

.method public abstract getFacet(I)Lorg/apache/xerces/xs/XSObject;
.end method

.method public abstract getFacets()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getFinite()Z
.end method

.method public abstract getFixedFacets()S
.end method

.method public abstract getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getLexicalEnumeration()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getLexicalFacetValue(S)Ljava/lang/String;
.end method

.method public abstract getLexicalPattern()Lorg/apache/xerces/xs/StringList;
.end method

.method public abstract getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getMultiValueFacets()Lorg/apache/xerces/xs/XSObjectList;
.end method

.method public abstract getNumeric()Z
.end method

.method public abstract getOrdered()S
.end method

.method public abstract getPrimitiveType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
.end method

.method public abstract getVariety()S
.end method

.method public abstract isDefinedFacet(S)Z
.end method

.method public abstract isFixedFacet(S)Z
.end method
