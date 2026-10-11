package com.sun.org.apache.xerces.internal.p056xs;

/* loaded from: classes10.dex */
public interface XSAttributeDeclaration extends XSObject {
    Object getActualVC() throws XSException;

    short getActualVCType() throws XSException;

    XSAnnotation getAnnotation();

    short getConstraintType();

    String getConstraintValue();

    XSComplexTypeDefinition getEnclosingCTDefinition();

    ShortList getItemValueTypes() throws XSException;

    short getScope();

    XSSimpleTypeDefinition getTypeDefinition();
}
