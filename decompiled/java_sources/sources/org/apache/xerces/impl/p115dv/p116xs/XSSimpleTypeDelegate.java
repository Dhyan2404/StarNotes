package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.DatatypeException;
import org.apache.xerces.impl.p115dv.InvalidDatatypeFacetException;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSFacets;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;

/* loaded from: classes13.dex */
public class XSSimpleTypeDelegate implements XSSimpleType {
    protected final XSSimpleType type;

    public XSSimpleTypeDelegate(XSSimpleType xSSimpleType) {
        xSSimpleType.getClass();
        this.type = xSSimpleType;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public void applyFacets(XSFacets xSFacets, short s, short s2, ValidationContext validationContext) throws InvalidDatatypeFacetException {
        this.type.applyFacets(xSFacets, s, s2, validationContext);
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean derivedFrom(String str, String str2, short s) {
        return this.type.derivedFrom(str, str2, s);
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean derivedFromType(XSTypeDefinition xSTypeDefinition, short s) {
        return this.type.derivedFromType(xSTypeDefinition, s);
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getAnnotations() {
        return this.type.getAnnotations();
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean getAnonymous() {
        return this.type.getAnonymous();
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public XSTypeDefinition getBaseType() {
        return this.type.getBaseType();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getBounded() {
        return this.type.getBounded();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getBuiltInKind() {
        return this.type.getBuiltInKind();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getDefinedFacets() {
        return this.type.getDefinedFacets();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObject getFacet(int i) {
        return this.type.getFacet(i);
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getFacets() {
        return this.type.getFacets();
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getFinal() {
        return this.type.getFinal();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getFinite() {
        return this.type.getFinite();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getFixedFacets() {
        return this.type.getFixedFacets();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getItemType() {
        return this.type.getItemType();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public StringList getLexicalEnumeration() {
        return this.type.getLexicalEnumeration();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public String getLexicalFacetValue(short s) {
        return this.type.getLexicalFacetValue(s);
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public StringList getLexicalPattern() {
        return this.type.getLexicalPattern();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getMemberTypes() {
        return this.type.getMemberTypes();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getMultiValueFacets() {
        return this.type.getMultiValueFacets();
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return this.type.getName();
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.type.getNamespace();
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.type.getNamespaceItem();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getNumeric() {
        return this.type.getNumeric();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getOrdered() {
        return this.type.getOrdered();
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public short getPrimitiveKind() {
        return this.type.getPrimitiveKind();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getPrimitiveType() {
        return this.type.getPrimitiveType();
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return this.type.getType();
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getTypeCategory() {
        return this.type.getTypeCategory();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getVariety() {
        return this.type.getVariety();
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public short getWhitespace() throws DatatypeException {
        return this.type.getWhitespace();
    }

    public XSSimpleType getWrappedXSSimpleType() {
        return this.type;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean isDefinedFacet(short s) {
        return this.type.isDefinedFacet(s);
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public boolean isEqual(Object obj, Object obj2) {
        return this.type.isEqual(obj, obj2);
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean isFinal(short s) {
        return this.type.isFinal(s);
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean isFixedFacet(short s) {
        return this.type.isFixedFacet(s);
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public boolean isIDType() {
        return this.type.isIDType();
    }

    public String toString() {
        return this.type.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public Object validate(Object obj, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        return this.type.validate(obj, validationContext, validatedInfo);
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public Object validate(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        return this.type.validate(str, validationContext, validatedInfo);
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public void validate(ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        this.type.validate(validationContext, validatedInfo);
    }
}
