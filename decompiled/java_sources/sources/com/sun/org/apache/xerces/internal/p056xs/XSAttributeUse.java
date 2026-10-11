package com.sun.org.apache.xerces.internal.p056xs;

/* loaded from: classes10.dex */
public interface XSAttributeUse extends XSObject {
    Object getActualVC() throws XSException;

    short getActualVCType() throws XSException;

    XSAttributeDeclaration getAttrDeclaration();

    short getConstraintType();

    String getConstraintValue();

    ShortList getItemValueTypes() throws XSException;

    boolean getRequired();
}
